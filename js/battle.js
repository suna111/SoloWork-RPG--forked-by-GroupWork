/** Hero and Slime BATTLE
 *
 */
'use strict';

document.getElementById("action1").onclick = function() {
	document.getElementById("messageArea").textContent = "「たたかう」：20ダメージ与える";
}

document.getElementById("action2").onclick = function() {
	document.getElementById("messageArea").textContent = "「吸血」：20ダメージ与え、自分のHPを回復する。消費MPは5";
}

document.getElementById("action3").onclick = function() {
	document.getElementById("messageArea").textContent = "「サンダー」：50ダメージ与える。消費MPは15"
}


console.log("てすと！");