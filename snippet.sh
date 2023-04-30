#!/bin/bash
function reactjs () {
    echo "
const comp = ()=> {
     return (
     <div>
	<h1>comp</h1>
     </div>
);
}
export default comp
"
}
function react-import () {
    echo "import stuff from './components/element'"
}
function makeContainer () {
    echo "<div className='some'>
    <div>
    </div>
</div>
"
}
function genFunction () {
    echo "function doSomething (){
    code
}
"
}
function skelHtml () { echo '
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Untitled</title>
    <meta name="description" content="This is an example of a meta description.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="theme.css">

  </head>
  <body>
		
  </body>
</html>
'
}
case $1 in
    "r")
	reactjs ;;
    "ri")
        react-import;;
    "f")
	genFunction ;;
    "c")
	makeContainer ;;
    "h")
	skelHtml;;
esac
