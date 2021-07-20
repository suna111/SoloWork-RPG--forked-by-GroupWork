/** Wizard and Dragon BATTLE
 *
 */
'use strict';

document.getElementById("action1").onclick = function() {
	document.getElementById("messageArea").textContent = "「たたかう」：3～6ダメージ与える";
}

document.getElementById("action2").onclick = function() {
	document.getElementById("messageArea").textContent = "「ファイヤー」：20ダメージ与える。消費MPは10";
}

document.getElementById("action3").onclick = function() {
	document.getElementById("messageArea").textContent = "「自暴自棄」：消費MP分ダメージを与える。消費MPは残り全て"
}


console.log("てすと！");