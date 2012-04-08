var currTool = "";

function setTool(id, mode){
	$("#toolBox > div").removeClass(mode).show("slow");
	$("#"+id).addClass(mode).show("slow");
	
	if(mode == "selected"){
		currTool = id;
	}
}

window.onload = function() {
	var width = 500;
	var height = 500;

	var stage = new Kinetic.Stage("container", width, height);
	var tmplLayer = new Kinetic.Layer();
	var feedbackLayer = new Kinetic.Layer();
	var flowersLayer = new Kinetic.Layer();

	var w = 50;

	var tooltip = new Kinetic.Text({
		text : "",
		fontFamily : "Calibri",
		fontSize : 12,
		padding : 5,
		textFill : "white",
		fill : "black",
		alpha : 0.75,
		visible : false
	});

	feedbackLayer.add(tooltip);

	var flowers = [ 1, 1, 1, 1, 1,
	                1, 1, 1, 1, 1,
	                1, 1, 1, 1, 1,
	                1, 1, 1, 1, 1,
	                1, 1, 1, 1, 1 ];

	var bbSize = Math.sqrt(flowers.length);

	var fW = bbSize * 50;

	var oX = (width - fW) / 2;
	var oY = (height - fW) / 2;

	for ( var x = 0; x < bbSize; x++) {
		for ( var y = 0; y < bbSize; y++) {
			if (flowers[y * bbSize + x]) {
				var tmpl = new Kinetic.Rect({
					x : oX + w * x,
					y : oY + w * y,
					width : w,
					height : w,
					fill : "#cccccc",
					stroke : "gray",
					strokeWidth : 2
				});

				tmpl.on("mousemove", function() {
					var mousePos = stage.getMousePosition();
					tooltip.setPosition(mousePos.x + 5, mousePos.y + 5);
					tooltip.setText(currTool == "" ? "No flower selected.":"Click to set selected flower.");
					tooltip.show();
					feedbackLayer.draw();
				});

				tmpl.on("mouseover", function() {
					this.setFill("#aaaaaa");

					tmplLayer.draw();
				});

				tmpl.on("mouseout", function() {
					tooltip.hide();
					feedbackLayer.draw();

					this.setFill("#cccccc");
					tmplLayer.draw();
				});

				tmpl.on("click", function() {
					if(currTool != ""){
						var imageObj = new Image();
						imageObj.src = "img/" + currTool + ".png";
	
						var image = new Kinetic.Image({
							x : this.x,
							y : this.y,
							image : imageObj,
							width : 50,
							height : 50,
						});
	
						flowersLayer.add(image);
						flowersLayer.draw();
	
						this.hide();
						tmplLayer.draw();
					}
				});

				tmplLayer.add(tmpl);
			}
		}
	}

	stage.add(tmplLayer);
	stage.add(flowersLayer);
	stage.add(feedbackLayer);
};
