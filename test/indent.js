// This is a one line comment
var one = 'one',
	two = 'two',
	three = 'three';

/*
 * this is a multiline comment
 */
switch (one) {
	case 'one':
		console.log('one');
		console.log('two');
		break;
	default:
		console.log('default');
		console.log('end');
}

var array = [
		'one',
		'two',
		'three'
	],
	// This is a one line comment
	afterArray = 'after',
	postAfterArray = 'post';

/*
 * this is a multiline comment
 */
[].forEach(function(
	argumentOne,
	argumentTwo,
	argumentThree
) {
	console.log('one');
	console.log('two');
	console.log('three');
}.bind(
	'one',
	'two'
));
console.log('next instruction');
