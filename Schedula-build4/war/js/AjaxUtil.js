var userid;
var activeBox = "";
window.onload= init;

//general ajax function for all requests 
function makeRequest(url,async) {
	var httpRequest;
	if (window.XMLHttpRequest) {
		// Mozilla, Safari, ...
		httpRequest = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		// IE
		try {
			httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} 
		catch (e) {
			try {
				httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} 
			catch (e) {}
		}
	}

	if (!httpRequest) {
		alert('Giving up :( Cannot create an XMLHTTP instance');
		return false;
	}
	httpRequest.open('POST', url,async);
	httpRequest.send();
	return httpRequest;
}


function init(){
	registerUser();
}

registerUser = function(){
	document.getElementById("chatMessagesPage").style.display = "block";
	userid = document.getElementById("userid").innerHTML;
	requestToken();
	displayFriendList();
};

requestToken = function(){
	var getTokenURI = '/gettoken?userid=' + userid ;
	var httpRequest = makeRequest(getTokenURI,true);
	httpRequest.onreadystatechange = function(){
		if (httpRequest.readyState === 4) {
			if (httpRequest.status === 200) {
				openChannel(httpRequest.responseText);
			}
			
			else {}
		}
	}
};

openChannel = function(token) {
	var channel = new goog.appengine.Channel(token);
	var socket = channel.open();
	socket.onopen = onSocketOpen;
	socket.onmessage = onSocketMessage;
	socket.onerror = onSocketError;
	socket.onclose = onSocketClose;
};

onSocketError = function(error){};

onSocketOpen = function() {};

onSocketClose = function() {};

onSocketMessage = function(message) {
	var messageXML =  ((new DOMParser()).parseFromString(message.data, "text/xml"));
	var messageType = messageXML.documentElement.getElementsByTagName("type")[0].firstChild.nodeValue;
	if(messageType == "updateFriendList"){
		addToFriends(messageXML.documentElement.getElementsByTagName("message")[0].firstChild.nodeValue);
	}else if(messageType == "updateChatBox"){
		var friend = messageXML.documentElement.getElementsByTagName("from")[0].firstChild.nodeValue ;
		document.getElementById(friend+"chatBox").style.display="block";
		updateChatBox(messageXML.documentElement.getElementsByTagName("message")[0].firstChild.nodeValue,friend);
	}
};


displayFriendList =function(){
	var getFriendListURI = 'getFriendList?userid='+ userid;
	var httpRequest = makeRequest(getFriendListURI,false);
	if (httpRequest.readyState === 4) {
		if (httpRequest.status === 200) {
			
			var friendListXML = httpRequest.responseXML.getElementsByTagName("friend");
			for( var i =0 ; i < friendListXML.length ; i++){
				addToFriends(friendListXML[i].getElementsByTagName("name")[0].firstChild.nodeValue);
			}	
		}
		
		else {}
	}
};


var friendsList= new Array();


addToFriends = function(friend){
	//check if the user already added
	//alert(friend + "1");
	var contains = false;
	for(var i = 0 ; i < friendsList.length ; i++){
		if(friendsList[i]==friend){
			contains=true;
			break;
		}
	}
	if(!contains){
		friendsList.push(friend);
		var friendDisplay = document.getElementById("friendDisplay");
		friendDisplay.innerHTML = friendDisplay.innerHTML + "<br>" + "<a class='friendLinks' id='"+friend+"'>"+friend+"</a>";
		friendDisplay.style.cursor="pointer";
		friendDisplay.setAttribute("onclick","openChat(\""+friend+"\");");
		//alert(friend + "2");
		
		//adding chat boxes 
		var chatBox = document.createElement("div");
		chatBox.setAttribute("id",friend+"chatBox");
		chatBox.setAttribute("class","chatbox");

		var headerContainer = document.createElement("div");
		headerContainer.setAttribute("class","headerContainer");

		var closeButton = document.createElement("a");
		closeButton.innerHTML="X";
		closeButton.setAttribute("class","closeButton");
		closeButton.setAttribute("onclick","closeWindow('"+friend+"')");
		headerContainer.appendChild(closeButton);

		var headerMessage = document.createElement("p");
		headerMessage.setAttribute("class","headerMessage");
		headerMessage.innerHTML = "<b>"+friend+"</b><br />";
		headerContainer.appendChild(headerMessage);

		chatBox.appendChild(headerContainer);
		var chatBoxMessagesContainer = document.createElement("div");
		chatBoxMessagesContainer.setAttribute("id",friend+"chatBoxMessageContainer");
		chatBoxMessagesContainer.setAttribute("class","chatBoxMessagesContainer");
		chatBox.appendChild(chatBoxMessagesContainer);

		var chatBoxMessagesTextarea = document.createElement("div");
		var textareaStr = "<textarea id='"+friend+"textarea' cols='25' rows='2'" +
			"onkeydown=\"if(event.keyCode == 13){sendMessage('"+friend+"') }\"" +
			"class=\"chatTextArea\"" +
			" ></textarea>";
		chatBox.innerHTML += textareaStr;

		var submitButton = document.createElement("input");
		submitButton.setAttribute("type","button");
		submitButton.setAttribute("value","send");
		submitButton.setAttribute("id",friend+"submitButton");
		submitButton.setAttribute("onclick","sendMessage('"+friend+"')");

		chatBox.appendChild(document.createElement("br"));

		document.getElementById("chatMessagesPage").appendChild(chatBox);
	}
};

closeWindow = function(friend){
	document.getElementById(friend+"chatBox").style.display="none";
}

openChat = function(friend){
	//alert(friend + "3");
	activeBox = friend+"chatBox";
	document.getElementById(friend+"chatBox").style.display = "block";
	document.getElementById(friend+"textarea").focus();
}

sendMessage = function(friend){
	var message = document.getElementById(friend+"textarea").value;
	var sendMessageURI = '/message?message=' + message + '&to=' + friend+'&from='+userid ;
	var httpRequest = makeRequest(sendMessageURI,true);
	httpRequest.onreadystatechange = function(){
		if (httpRequest.readyState === 4) {
			if (httpRequest.status === 200) {
				}else {
				alert('There was a problem with the request.');
			}
		}
	}
	var mesgDiv = document.createElement("a");
	mesgDiv.style.color = "black";
	mesgDiv.innerHTML ="<b>me</b>:  "+ message+"<br />";
	var abc = document.getElementById(friend+"chatBoxMessageContainer");
	if(abc)
		abc.appendChild(mesgDiv);
	else
		alert("error");
	document.getElementById(friend+"textarea").value="";
}

updateChatBox = function(message,from){
	var mesgDiv = document.createElement("a");
	mesgDiv.style.color = "black";
	mesgDiv.innerHTML ="<b>"+from+"</b>:  "+ message+"<br />";
	var abc = document.getElementById(from+"chatBoxMessageContainer");
	if(abc)
		abc.appendChild(mesgDiv);
	else
		alert("error");
};
