/** Fighter and Matango BATTLE
 *
 */
'use strict';

document.getElementById("action1").onclick = function() {
	document.getElementById("messageArea").textContent = "「たたかう」：（5×1.9倍）ダメージ与える";
}

document.getElementById("action2").onclick = function() {
	document.getElementById("messageArea").textContent = "「精神統一」：5ダメージ与え、次の攻撃を２回攻撃にする。";
}

document.getElementById("action3").onclick = function() {
	document.getElementById("messageArea").textContent = "「飛び蹴り」：100ダメージ与える。";
}


console.log("てすと！");