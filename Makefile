all: index.html style.css

index.html: index.haml
	haml -t ugly index.haml > index.html

style.css: style.scss
	scss -t compressed style.scss > style.css

clean:
	rm index.html style.css
