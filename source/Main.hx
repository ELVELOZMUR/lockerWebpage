package;

import js.html.IntersectionObserver;
import js.Browser;

class Main {
	public static inline var johnLocke = "John Locke (1632-1704) fue un reconocido filosofo y contractualista ingles nacido en el siglo XVI. Murio en 1704 en High Laver, Essex a los 72 años.
	\nEstudio en la escuela de Westminster. Despues de graduarse se fue a estudiar a la Universidad de Oxford, consiguio una maestria y en 1652 se matriculo como medico.
	\nEn 1667 se convirtio en el medico personal y secretario del que pronto sera conde, Anthony Ashley Cooper. Este influyo mucho en su pensar, creyendo que el Estado debia restaurar el catolicismo bajo el mandato del Parlamento.
	\nEstuvo en Francia entre 1675 y 1678 donde, estudio a autores como Rene Descarte. No mucho despues en 1683 dejo de estar con el conde y partio caminos.";

	public static var squareTitles:Array<String> = ["Ensayo sobre el entendimiento humano", "Dos tratados sobre el gobierno civil"];

	public static var resumes:Array<String> = [
		"Este ensayo busca comprender y entender de donde sale el conocimiento humano y sus limites.
		\nLocke critica la teoria del conocimiento innato argumentando que no todos los adultos y niños comprenden la misma moral. Tambienn dice que si realmente
		existiera un conomiento innato seria el de Dios.
		\nDefine dos tipos de ideas:
		\n- Las ideas simples son aquellas sensoriales como el gusto, la vista o la escucha, que no pueden imaginar si no se experimentan.
		\n- Las ideas complejas son aquellas que pueden imaginarse pero no sentirse, como por ejemplo los numeros imaginarios o el infinito.",
		"El libro habla sobre 2 tratados que Locke creo durante las guerras civiles inglesas:
		\n- El primer tratado habla sobre como la justificacion de los monarcas de que son descendientes de Adan, el primer rey, no tienen
		alguna evidencia o documento que las respalde, desmoronandose. Tambien menciona que lo mas probable de cualquier trato que Adan haya hecho
		no haya tenido en cuenta a sus sucesores miles de años despues.
		\n- El segundo tratado define el poder politico como la capacidad de dar de pena de muerte y cualquier otra pena menor
		para preservar la propiedad privada, la vida y la libertad al igual que defender a los ciudadanos de extranjeros."
	];

	public static var aporteCiencie:String = "Locke tuve muchos aportes a las ciencias politicas, entre ellos se encuentran:
	\n- La tolerancia religiosa por parte del Estado
	\n- La separacion de poderes para evitar el abuso de poder o la corrupcion
	\n- La limitacion del gobierno a solo la defense de los ciudadanos
	\n- El contrato social en base a la razon y el interes propio
	\n- Los derechos naturales de Vida, Liberta y la propied privada";

	public static var sourceLinks:Array<String> = [
		"https://www.britannica.com/biography/John-Locke",
		"https://www.worldhistory.org/trans/es/1-20857/john-locke/",
		"https://www.ebsco.com/research-starters/literature-and-writing/essay-concerning-human-understanding-john-locke",
		"https://www.getabstract.com/es/resumen/ensayo-sobre-el-entendimiento-humano/34305",
		"https://www.ebsco.com/research-starters/history/two-treatises-government-john-locke",
		"https://www.britannica.com/topic/Two-Treatises-of-Government",
		"https://www.britannica.com/topic/social-contract",
		"https://www.ebsco.com/research-starters/history/natural-law",
		"https://www.britannica.com/topic/A-Letter-Concerning-Toleration"
	];

	public static function main() {
		var darkMode = Browser.window.matchMedia("(prefers-color-scheme: dark)").matches;
		Browser.document.body.style.lineHeight = "1.6";
		Browser.document.body.style.fontFamily = "'intern', sans seriff";

		Browser.document.body.style.backgroundColor = "#403E3E";
		Browser.document.body.style.backgroundImage = "radial-gradient(#635957 2px, transparent 2px)";
		Browser.document.body.style.backgroundSize = "24px 24px";
		Browser.document.body.style.display = "flex";
		Browser.document.body.style.flexDirection = "column";
		Browser.document.body.style.gap = "20px";

		var observer = new IntersectionObserver(function(entries, observer) {
			for (entry in entries) {
				if (entry.isIntersecting) {
					entry.target.style.animation = "appear 1s ease-out forwards";
					observer.unobserve(entry.target);
				}
			}
		}, {
			threshold: 0.25
		});

		var fadeIn = Browser.document.getElementById("appear");

		var page = Browser.document.createDivElement();
		page.style.display = "flex";
		page.style.flexDirection = "column";
		page.style.justifyContent = "center";
		page.style.alignItems = "center";
		page.className = "page";
		page.style.gap = "80px";
		Browser.document.body.appendChild(page);

		var text = Browser.document.createDivElement();
		text.style.display = "flex";
		text.style.flexDirection = "column";
		text.style.justifyContent = "center";
		text.style.alignItems = "center";
		text.style.width = "90%";
		page.appendChild(text);

		var title = Browser.document.createHRElement();
		title.textContent = "Biografia de John Locke";
		title.style.fontSize = "64px";
		title.style.border = "0px";
		title.style.color = "#FFFFFF";
		observer.observe(title);
		title.style.opacity = "0";
		title.style.textAlign = "center";
		text.appendChild(title);

		var bar = Browser.document.createDivElement();
		bar.style.width = "80%";
		bar.style.height = "2px";
		bar.style.backgroundColor = "#FFFFFF";
		bar.style.position = "relative";
		bar.style.top = "95%";
		text.appendChild(bar);

		var biography = Browser.document.createDivElement();
		biography.style.display = "flex";
		biography.style.width = "100%";
		biography.className = "biography";
		biography.style.gap = "40px";
		page.appendChild(biography);

		var johnLockeImage = Browser.document.createDivElement();
		johnLockeImage.style.backgroundImage = "url(johnLocke.jpg)";
		johnLockeImage.style.minWidth = "165px";
		johnLockeImage.style.minHeight = "251px";
		johnLockeImage.style.width = "330px";
		johnLockeImage.style.height = "502px";
		johnLockeImage.style.display = "block";
		johnLockeImage.className = "john locke";
		biography.appendChild(johnLockeImage);

		var lockDescription = Browser.document.createDivElement();
		lockDescription.style.position = "relative";
		lockDescription.style.top = "101%";
		johnLockeImage.appendChild(lockDescription);

		var lock = Browser.document.createParagraphElement();
		lock.textContent = "Un retrato de John Locke";
		lock.style.color = "#FFFFFF";
		lockDescription.appendChild(lock);

		var mainPart = Browser.document.createDivElement();
		if (darkMode)
			mainPart.style.background = "radial-gradient(#403E3E, #2E2C2B)";
		else
			mainPart.style.background = "radial-gradient(#E6E6E6, #CCCCCC)";
		mainPart.style.height = "50%";
		mainPart.style.display = "flex";
		mainPart.style.flexDirection = "column";
		mainPart.style.borderRadius = "15px";
		observer.observe(mainPart);
		mainPart.style.opacity = "0";
		mainPart.className = "mainpart";
		mainPart.style.boxShadow = "5px 5px 2px 1px rgba(0, 0, 0, 0.3)";
		biography.appendChild(mainPart);

		var texts = johnLocke.split("\n");

		for (text in texts) {
			if (StringTools.trim(text) == "")
				continue;

			var par = Browser.document.createParagraphElement();
			par.style.margin = "10px";
			par.style.fontSize = "20px";
			par.style.color = "#FFFFFF";
			par.textContent = text;
			mainPart.appendChild(par);
		}

		var squares = Browser.document.createDivElement();
		squares.style.width = "90%";
		squares.style.display = "flex";
		squares.style.justifyContent = "center";
		squares.style.alignItems = "start";
		squares.style.gap = "50px";
		squares.className = "squareCont";
		page.appendChild(squares);

		for (i in 0...2) {
			var square = Browser.document.createDivElement();
			if (darkMode)
				square.style.background = "radial-gradient(#403E3E, #2E2C2B)";
			else
				square.style.background = "radial-gradient(#E6E6E6, #CCCCCC)";
			square.style.borderRadius = "15px";
			square.style.display = "flex";
			square.style.flexDirection = "column";
			square.style.justifyContent = "center";
			square.style.alignItems = "center";
			square.style.boxShadow = "5px 5px 2px 1px rgba(0, 0, 0, 0.3)";
			square.className = "square-" + i;
			observer.observe(square);
			square.style.opacity = "0";
			squares.appendChild(square);

			var squareTitle = Browser.document.createHRElement();
			squareTitle.textContent = squareTitles[i];
			squareTitle.style.fontSize = "32px";
			squareTitle.style.textAlign = "center";
			squareTitle.style.border = "0px";
			squareTitle.style.color = "#FFFFFF";
			square.appendChild(squareTitle);

			var split = resumes[i].split("\n");

			for (text in split) {
				if (StringTools.trim(text) == "")
					continue;

				var squareText = Browser.document.createParagraphElement();
				squareText.style.marginLeft = "10px";
				squareText.style.marginRight = "10px";
				squareText.style.marginTop = "5px";
				squareText.style.marginBottom = "5px";
				squareText.textContent = text;
				squareText.style.textAlign = "center";
				squareText.style.fontSize = "24px";
				squareText.style.color = "#FFFFFF";
				square.appendChild(squareText);
			}
		}

		var cienceApports = Browser.document.createDivElement();
		cienceApports.style.width = "60%";
		if (darkMode)
			cienceApports.style.background = "radial-gradient(#403E3E, #2E2C2B)";
		else
			cienceApports.style.background = "radial-gradient(#E6E6E6, #CCCCCC)";
		cienceApports.style.borderRadius = "15px";
		cienceApports.style.display = "flex";
		cienceApports.style.flexDirection = "column";
		cienceApports.style.justifyContent = "center";
		cienceApports.style.alignItems = "center";
		cienceApports.style.boxShadow = "5px 5px 2px 1px rgba(0, 0, 0, 0.3)";
		observer.observe(cienceApports);
		cienceApports.style.opacity = "0";
		page.appendChild(cienceApports);

		var apTitle = Browser.document.createHRElement();
		apTitle.textContent = "Aportes a las ciencias politicas";
		apTitle.style.fontSize = "32px";
		apTitle.style.textAlign = "center";
		apTitle.style.border = "0px";
		apTitle.style.color = "#FFFFFF";
		cienceApports.appendChild(apTitle);

		var split = aporteCiencie.split("\n");

		for (text in split) {
			if (StringTools.trim(text) == "")
				continue;

			var apText = Browser.document.createParagraphElement();
			apText.style.marginLeft = "10px";
			apText.style.marginRight = "10px";
			apText.style.marginTop = "5px";
			apText.style.marginBottom = "5px";
			apText.textContent = text;
			apText.style.textAlign = "center";
			apText.style.fontSize = "24px";
			apText.style.color = "#FFFFFF";
			cienceApports.appendChild(apText);
		}

		Browser.document.body.style.backgroundColor = "#403E3E";
		Browser.document.body.style.backgroundImage = "radial-gradient(#635957 2px, transparent 2px)";
		Browser.document.body.style.backgroundSize = "24px 24px";

		var sources = Browser.document.createDivElement();
		sources.style.width = "100%";
		sources.style.display = "flex";
		sources.style.flexDirection = "column";
		sources.style.justifyContent = "center";
		sources.style.alignItems = "start";
		sources.style.gap = "20px";
		sources.style.backgroundColor = "#36454F";
		sources.style.backgroundSize = "60px 5px";
		Browser.document.body.appendChild(sources);

		var sourceTitle = Browser.document.createHRElement();
		sourceTitle.textContent = "Fuentes";
		sourceTitle.style.fontSize = "32px";
		sourceTitle.style.border = "0px";
		sourceTitle.style.color = "#FFFFFF";
		sources.appendChild(sourceTitle);

		for (link in sourceLinks) {
			var linkText = Browser.document.createAnchorElement();
			linkText.setAttribute("href", link);
			linkText.textContent = link;
			linkText.style.marginLeft = "10px";
			linkText.style.marginRight = "10px";
			linkText.style.marginTop = "5px";
			linkText.style.marginBottom = "5px";
			linkText.style.fontSize = "16px";
			linkText.style.color = "#1C98FF";
			sources.appendChild(linkText);
		}
	}
}
