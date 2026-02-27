zipName = xblizna00.zip

.PHONY: clean zip

clean:
	rm -f $(zipName)
	rm -rf ./temp

zip: clean
	mkdir -p temp/ija/homework1/scheme/blocks/
	cp ija/homework1/scheme/blocks/AddBlock.java temp/ija/homework1/scheme/blocks/
	cp ija/homework1/scheme/blocks/Block.java temp/ija/homework1/scheme/blocks/
	cp ija/homework1/scheme/blocks/ConstantBlock.java temp/ija/homework1/scheme/blocks/
	cp ija/homework1/scheme/blocks/MultiplyBlock.java temp/ija/homework1/scheme/blocks/
	cp ija/homework1/scheme/blocks/Port.java temp/ija/homework1/scheme/blocks/
	cd temp && zip -r ../$(zipName) ija
	rm -rf temp