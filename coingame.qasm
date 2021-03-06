OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];

// キュビットに１（コインの表）をセット
x q[0];

// 量子コンピュータがコイン（キュビット）の状態を重ね合わせ状態にする
h q[0];

// 人がコインを裏返さない（キュビットにNOTゲートを適用しない）ことを選択した
//x q[0];

// 量子コンピュータがコイン（キュビット）の状態を変える
h q[0];

//測定:１が測定されたらコンピュータの勝ち
measure q[0] -> c[0];