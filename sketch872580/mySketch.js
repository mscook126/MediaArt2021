let renderer;
const CYCLE = 60;
let sh;



function setup() {
	renderer = createCanvas(windowWidth, windowHeight,WEBGL);
	//shader
	sh = createShader(vert,frag);
	this.shader(sh);
	sh.setUniform("u_resolution", [width,height]);
	sh.setUniform("u_lightDir", [0.5,1,-1]);
	pixelDensity(2);
	
}

function draw() {
	background('#18171D');
	
	orbitControl();
	
	let s = min(width,height)*0.14 + 2*sin(frameCount/CYCLE*PI);
	
	setCol(sh,'#D3E3FE');
	translate(0,cos(frameCount/CYCLE*PI)*s*0.2,0);
	rotateX(0.3);
	push();
	rotateY(-frameCount/CYCLE/2*PI);
	obake(s,s*(2.5+0.125*sin(frameCount/CYCLE*PI)),50,30);
	pop();
	setCol(sh,'#222222');
	rotateY(PI*1.2);
	push();
	translate(s,s*0.2,0);
	ball(s*0.1,10,10);
	pop();
	rotateY(PI*0.2);
	translate(s,s*0.2,0);
	ball(s*0.1,10,10);
	
}



function obake(_sphereRadius,_h,_dx,_dy)
{
	let geometry = new p5.Geometry(_dx,_dy);
	
	for(let yi = 0; yi <= _dy; yi ++)
	{
		let yRadian = map(yi,0,_dy,-PI/2,PI/2);
		let y,radius,degree;
		if(yi < _dy/2){
			degree = 0;
			y = sin(yRadian)*_sphereRadius;
			radius = cos(yRadian)*_sphereRadius;
		}else{
			degree = map(yi,_dy/2,_dy,0,1);
			y = degree*(_h-_sphereRadius)*(1+0.1*(sin(frameCount/CYCLE*PI)*0.5+1));
			radius = _sphereRadius +  pow(degree,3)*(_sphereRadius*0.3)*(sin(yi/_dy*3+frameCount/CYCLE*PI)*0.5+1);
		}
		for(let xi = 0; xi <= _dx; xi++)
		{
			let r = xi* TWO_PI/_dx*-1;
			let x = cos(r)*radius;
			let z = sin(r)*radius;
			let yOff = degree*(_h*0.07)*sin(frameCount/CYCLE/1.5*PI)*sin(r*5+frameCount/CYCLE*PI);
			geometry.vertices[xi + (_dx+1)*yi] = createVector(x,y-yOff,z);
		}
	}
	
	//face
	geometry.computeFaces();
	//normal
	geometry.computeNormals();
	geometry.averageNormals();	
	
	//draw
	renderer.createBuffers('gId', geometry);
	renderer.drawBuffers('gId');
}


function ball(_radius,_dx,_dy)
{
	let geometry = new p5.Geometry(_dx,_dy);
	for(let yi = 0; yi <= _dy; yi ++)
	{
		let yRadian = map(yi,0,_dy,PI/2,-PI/2);
		let y = sin(yRadian)*_radius;
		let radius = cos(yRadian)*_radius;
		for(let xi = 0; xi <= _dx; xi++){
			let r = xi* TWO_PI/_dx;
			let x = cos(r)*radius;
			let z = sin(r)*radius;
			geometry.vertices[xi + (_dx+1)*yi] = createVector(x,y,z);
		}
	}
	geometry.computeFaces();
	geometry.computeNormals();
	geometry.averageNormals();	
	renderer.createBuffers('ball', geometry);
	renderer.drawBuffers('ball');
}



function setCol(shader,colStr)
{
	let col = color(colStr);
	let colArray = col._array;
	colArray.pop();
	shader.setUniform("u_col",colArray);
}


