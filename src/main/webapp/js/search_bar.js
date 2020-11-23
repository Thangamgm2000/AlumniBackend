function removeAllChildren(node) {
  while (node.firstChild)
    node.removeChild(node.firstChild);
}

function onSelection(selObj) {

	var selected = selObj.value;
	var par = selObj.parentNode.parentNode.childNodes[3]
	removeAllChildren(par);

	if (selected === "roll") {

		var newinp = document.createElement("input");
		newinp.className = "form-control";
		newinp.placeholder = "Enter Roll Number";
		newinp.style = "border-radius: 10px;"
		newinp.id = "roll";
		par.appendChild(newinp);
	}
	else if (selected === "name") {

		var newinp = document.createElement("input");
		newinp.className = "form-control";
		newinp.placeholder = "Enter Name";
		newinp.style = "border-radius: 10px;"
		newinp.id = "name";
		par.appendChild(newinp);
	}
	else if (selected === "batch") {

		var newinp = document.createElement("input");
		newinp.className = "form-control";
		newinp.placeholder = "Enter Batch in 20xx-20xx format";
		newinp.style = "border-radius: 10px;"
		newinp.id = "batch";
		par.appendChild(newinp);
	}
	else if (selected === "company") {

		var newinp = document.createElement("input");
		newinp.className = "form-control";
		newinp.placeholder = "Enter Company";
		newinp.style = "border-radius: 10px;"
		newinp.id = "company";
		par.appendChild(newinp);
	}
	else if (selected === "course")
	{
		
		var newinp = document.createElement("select");
		newinp.className = "browser-default custom-select";

		var cc = document.createElement("option");
		cc.disabled = true;
		cc.selected = true;
		cc.hidden = true;
		cc.innerHTML = "Choose a Course";

		newinp.appendChild(cc);
		
		var btech = document.createElement("option");
		btech.value = "btech"
		btech.innerHTML = "B. Tech";

		newinp.appendChild(btech);

		var mtech = document.createElement("option");
		mtech.value = "mtech"
		mtech.innerHTML = "M. Tech";

		newinp.style = "border-radius: 10px;"
		newinp.appendChild(mtech);
		newinp.id = "course";
		par.appendChild(newinp);

	}
}


function addBar() {
	if (typeof addBar.counter == 'undefined') {
        addBar.counter = 1;
    }

    if(addBar.counter < 5)
    {	
    	var id = "bar" + addBar.counter;
    	var iht = document.getElementById(id).innerHTML;
		var newbar = document.createElement("div");
		newbar.className = "row mt-3";
		newbar.id = "bar" + (addBar.counter + 1);
		newbar.innerHTML = iht;
		var plus = document.getElementById("add-button");
		plus.parentNode.removeChild(plus);

		document.getElementById("barcontainer").appendChild(newbar);

		addBar.counter += 1;
    }
    
    if (addBar.counter === 5)
    {
    	var plus = document.getElementById("add-button");
		plus.parentNode.removeChild(plus);
    }
}