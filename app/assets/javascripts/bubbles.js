$(document).ready(

function bubbleStart(){
	var screeninfo = {
		h : $(window).height() - 50,
		w : $(window).width() - 50
	};
	var bubblePrototype = {
		color : "rgba(20,80,200,0.2)",
		radius : "50px",
		X : function(){
			return Math.floor(Math.random() * screeninfo.w);
		},
		Y : function(){
			return Math.floor(Math.random() * screeninfo.h);
		},
		makeBubble : function(){
			var element = document.createElement("div");
			element.setAttribute("class", "bubble"); 
			element.setAttribute("style",
				"width: "             + this.radius    +  "px ;" + 
				"height: "            + this.radius    +  "px ;" + 
				"background-color: "  + this.color     +  " ;" + 
				"top: "               + this.Y()       +  "px ;" + 
				"left: "              + this.X()       +  "px ;"
			);
			$('#wrap').append(element);
		}
	};

	function Bubble (color, radius) {
		this.color = color;
		this.radius = radius;	
	}

	Bubble.prototype = bubblePrototype;
	function randomise(floor){
		return Math.floor(Math.random() * floor);
	}
	function randomColor(){
		var r = randomise(255),
			g = randomise(255),
			b = randomise(255);
		return "rgba(" + 
				r + "," +
				g + "," +
				b + ",0.25)";
	}
	function randomSize(){
		s = randomise(60) + 40;
		return s;
	}	
	function makeBubbles(n){
		for (var b = 0; b < n; b++) {
			var bub = new Bubble(randomColor(), randomSize());
			bub.makeBubble();
		};
	};
	makeBubbles(12);

	
	
// Click events 
	$(document).ready(function(){
		// add a click event to all bubbles to change the bubble size
		$('.bubble').on("click", function() { 
			$(".inner-content", this).toggle();
			function zed(object){
				if ($.object.css("z-index") == "auto") $.object.css("z-index", 3);
				else { $.object.css("z-index", "auto")};
			}
			var s = randomise(80);
			$(this).css( { 
				width: s + 'px',
				height: s + 'px',
				"z-index": zed(this) 
			} );
			$(this).stop();
			animateDiv( $(this) );
		} );
		// set each bubble in motion toward a random point on the screen
		// using a recursive call, set the bubble off again once it arrives
		$('.bubble').each(function(){
			animateDiv( $(this) );
		});
		
	});

	function makeNewPosition(){
		var nh = Math.floor(Math.random() * screeninfo.h),
			nw = Math.floor(Math.random() * screeninfo.w);
		return [nh,nw];
	}

	function animateDiv(bubble){
		var newq = makeNewPosition(),
			oldq = bubble.offset(),
			speed = calcSpeed([oldq.top, oldq.left], newq);
		bubble.animate(
			{ top: newq[0], left: newq[1] }, 
			speed,
			"easeOutQuint",
			function(){animateDiv(bubble)}
		);
	}

	function calcSpeed(prev, next) {
		var x = Math.abs(prev[1] - next[1]),
			y = Math.abs(prev[0] - next[0]),
			greatest = x > y ? x : y,
			speedModifier = 0.03,
			speed = Math.ceil(greatest/speedModifier);
		return speed;
	}
});