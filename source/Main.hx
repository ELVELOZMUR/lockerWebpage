package;

import js.Browser;

class Main {
	public static function main() {
		var darkMode = Browser.window.matchMedia("(prefers-color-scheme: dark)").matches;

		var page = Browser.document.createDivElement();
		page.style.display = "flex";
		page.style.flexDirection = "column";
		page.style.justifyContent = "center";
		page.style.alignItems = "center";
		page.className = "page";
		page.style.gap = "20px";
		Browser.document.body.appendChild(page);

		var text = Browser.document.createDivElement();
		text.style.justifyContent = "center";
		text.style.alignItems = "center";
		text.style.width = "90%";
		text.style.textAlign = "center";
		page.appendChild(text);

		var title = Browser.document.createHRElement();
		title.textContent = "Biografia de John Locke";
		title.style.fontSize = "64px";
		title.style.border = "0px";
		title.style.color = "#000000";
		text.appendChild(title);

		var biography = Browser.document.createDivElement();
		biography.style.display = "flex";
		biography.style.flexDirection = "row";
		biography.style.justifyContent = "center";
		biography.style.alignItems = "center";
		biography.style.width = "100%";
		page.appendChild(biography);

		var johnLockeImage = Browser.document.createDivElement();
		johnLockeImage.style.backgroundImage = "url(johnLocke.jpg)";
		johnLockeImage.style.minWidth = "165px";
		johnLockeImage.style.minHeight = "251px";
		johnLockeImage.style.width = "330px";
		johnLockeImage.style.height = "502px";
		johnLockeImage.style.display = "block";
		johnLockeImage.style.position = "relative";
		johnLockeImage.style.left = "-10%";
		johnLockeImage.className = "john locke";
		biography.appendChild(johnLockeImage);

		var mainPart = Browser.document.createDivElement();
		if (darkMode)
			mainPart.style.backgroundColor = "#2E2C2B";
		else
			mainPart.style.backgroundColor = "#CCCCCC";

		mainPart.style.width = "50%";
		mainPart.style.height = "50%";
		mainPart.style.display = "flex";
		mainPart.style.flexDirection = "column";
		mainPart.style.justifyContent = "center";
		mainPart.style.alignItems = "center";
		mainPart.style.borderRadius = "15px";
		biography.appendChild(mainPart);

		var text = Browser.document.createParagraphElement();
        text.style.padding = "10px";
        text.style.fontSize = "20px";
		text.textContent = "John Locke (1632-1704) fue un reconocido filosofo y contractualista nacido en el siglo XVI.";
		mainPart.appendChild(text);

		var squares = Browser.document.createDivElement();
		squares.style.width = "90%";
		squares.style.display = "flex";
		squares.style.flexDirection = "row";
		squares.style.justifyContent = "center";
		squares.style.alignItems = "center";
		squares.style.gap = "50px";
		page.appendChild(squares);

		for (i in 0...2) {
			var square = Browser.document.createDivElement();
			square.style.width = "40%";
			if (darkMode)
				square.style.backgroundColor = "#2E2C2B";
			else
				square.style.backgroundColor = "#CCCCCC";
            square.style.borderRadius = "15px";
            square.style.display = "flex";
            square.style.flexDirection = "column";
            square.style.justifyContent = "center";
            square.style.alignItems = "center";
			squares.appendChild(square);

			var squareTitle = Browser.document.createHRElement();
			squareTitle.textContent = "Square " + i;
			squareTitle.style.fontSize = "32px";
			squareTitle.style.textAlign = "center";
            squareTitle.style.border = "0px";
			square.appendChild(squareTitle);

            var squareText = Browser.document.createParagraphElement();
            squareText.textContent = "square square square square square square " + i;
            squareText.style.textAlign = "center";
            squareText.style.fontSize = "24px";
            square.appendChild(squareText);
		}
	}
}
