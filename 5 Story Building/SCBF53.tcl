wipe 
wipeAnalysis 
model BasicBuilder -ndm 2 -ndf 3 
 
node 10 0 0  
node 20 5 0  
node 30 10 0  
node 40 15 0  
node 110 0 3  
node 120 5 3  
node 130 10 3  
node 140 15 3  
node 210 0 6  
node 220 5 6  
node 230 10 6  
node 240 15 6  
node 310 0 9  
node 320 5 9  
node 330 10 9  
node 340 15 9  
node 410 0 12  
node 420 5 12  
node 430 10 12  
node 440 15 12  
node 510 0 15  
node 520 5 15  
node 530 10 15  
node 540 15 15  

node 12 0 0 
node 21 5 0 
node 22 5 0 
node 31 10 0 
node 32 10 0 
node 41 15 0 
node 112 0 3 
node 121 5 3 
node 122 5 3 
node 131 10 3 
node 132 10 3 
node 141 15 3 
node 212 0 6 
node 221 5 6 
node 222 5 6 
node 231 10 6 
node 232 10 6 
node 241 15 6 
node 312 0 9 
node 321 5 9 
node 322 5 9 
node 331 10 9 
node 332 10 9 
node 341 15 9 
node 412 0 12 
node 421 5 12 
node 422 5 12 
node 431 10 12 
node 432 10 12 
node 441 15 12 
node 512 0 15 
node 521 5 15 
node 522 5 15 
node 531 10 15 
node 532 10 15 
node 541 15 15 


equalDOF 110 120 1 
equalDOF 110 130 1 
equalDOF 110 140 1 
equalDOF 210 220 1 
equalDOF 210 230 1 
equalDOF 210 240 1 
equalDOF 310 320 1 
equalDOF 310 330 1 
equalDOF 310 340 1 
equalDOF 410 420 1 
equalDOF 410 430 1 
equalDOF 410 440 1 
equalDOF 510 520 1 
equalDOF 510 530 1 
equalDOF 510 540 1 


fixY 0.0 1 1 1 


geomTransf Linear 1 
geomTransf PDelta 2 
uniaxialMaterial Elastic 3   2000000000000    
element elasticBeamColumn 111 10 110 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 121 20 120 2.503221e-02 20394323844 6.368341e-04 1 
element elasticBeamColumn 131 30 130 2.503221e-02 20394323844 6.368341e-04 1 
element elasticBeamColumn 141 40 140 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 211 110 210 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 221 120 220 2.503221e-02 20394323844 6.368341e-04 1 
element elasticBeamColumn 231 130 230 2.503221e-02 20394323844 6.368341e-04 1 
element elasticBeamColumn 241 140 240 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 311 210 310 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 321 220 320 1.000654e-02 20394323844 2.251812e-04 1 
element elasticBeamColumn 331 230 330 1.000654e-02 20394323844 2.251812e-04 1 
element elasticBeamColumn 341 240 340 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 411 310 410 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 421 320 420 1.000654e-02 20394323844 2.251812e-04 1 
element elasticBeamColumn 431 330 430 1.000654e-02 20394323844 2.251812e-04 1 
element elasticBeamColumn 441 340 440 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 511 410 510 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 521 420 520 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 531 430 530 9.096760e-03 20394323844 2.014560e-04 1 
element elasticBeamColumn 541 440 540 9.096760e-03 20394323844 2.014560e-04 1 


element elasticBeamColumn 112 112 121 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 122 122 131 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 132 132 141 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 212 212 221 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 222 222 231 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 232 232 241 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 312 312 321 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 322 322 331 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 332 332 341 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 412 412 421 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 422 422 431 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 432 432 441 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 512 512 521 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 522 522 531 6.650000e-03 20394323844 1.190000e-04 1 
element elasticBeamColumn 532 532 541 6.650000e-03 20394323844 1.190000e-04 1 


uniaxialMaterial Elastic 1   2000000000000    
uniaxialMaterial Elastic 2   2.0e-12   
element zeroLength    1114   110  112    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1214   210  212    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1314   310  312    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1414   410  412    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1514   510  512    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1241   120  121    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1242   120  122    -mat   1  1  2   -dir    1  2   3    
element zeroLength    2241   220  221    -mat   1  1  2   -dir    1  2   3    
element zeroLength    2242   220  222    -mat   1  1  2   -dir    1  2   3    
element zeroLength    3241   320  321    -mat   1  1  2   -dir    1  2   3    
element zeroLength    3242   320  322    -mat   1  1  2   -dir    1  2   3    
element zeroLength    4241   420  421    -mat   1  1  2   -dir    1  2   3    
element zeroLength    4242   420  422    -mat   1  1  2   -dir    1  2   3    
element zeroLength    5241   520  521    -mat   1  1  2   -dir    1  2   3    
element zeroLength    5242   520  522    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1341   130  131    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1342   130  132    -mat   1  1  2   -dir    1  2   3    
element zeroLength    2341   230  231    -mat   1  1  2   -dir    1  2   3    
element zeroLength    2342   230  232    -mat   1  1  2   -dir    1  2   3    
element zeroLength    3341   330  331    -mat   1  1  2   -dir    1  2   3    
element zeroLength    3342   330  332    -mat   1  1  2   -dir    1  2   3    
element zeroLength    4341   430  431    -mat   1  1  2   -dir    1  2   3    
element zeroLength    4342   430  432    -mat   1  1  2   -dir    1  2   3    
element zeroLength    5341   530  531    -mat   1  1  2   -dir    1  2   3    
element zeroLength    5342   530  532    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1144   140  141    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1244   240  241    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1344   340  341    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1444   440  441    -mat   1  1  2   -dir    1  2   3    
element zeroLength    1544   540  541    -mat   1  1  2   -dir    1  2   3    


uniaxialMaterial Elastic 4        20394323844  
element corotTruss 123 22 131 8.710000e-03 4
element corotTruss 124 122 31 8.710000e-03 4
element corotTruss 223 122 231 6.280000e-03 4
element corotTruss 224 222 131 6.280000e-03 4
element corotTruss 323 222 331 6.280000e-03 4
element corotTruss 324 322 231 6.280000e-03 4
element corotTruss 423 322 431 4.890000e-03 4
element corotTruss 424 422 331 4.890000e-03 4
element corotTruss 523 422 531 3.987089e-03 4
element corotTruss 524 522 431 3.987089e-03 4


pattern Plain 1 Linear { 
eleLoad -ele 112 -type -beamUniform -4600 
eleLoad -ele 122 -type -beamUniform -4600 
eleLoad -ele 132 -type -beamUniform -4600 
eleLoad -ele 212 -type -beamUniform -4600 
eleLoad -ele 222 -type -beamUniform -4600 
eleLoad -ele 232 -type -beamUniform -4600 
eleLoad -ele 312 -type -beamUniform -4600 
eleLoad -ele 322 -type -beamUniform -4600 
eleLoad -ele 332 -type -beamUniform -4600 
eleLoad -ele 412 -type -beamUniform -4600 
eleLoad -ele 422 -type -beamUniform -4600 
eleLoad -ele 432 -type -beamUniform -4600 
eleLoad -ele 512 -type -beamUniform -4600 
eleLoad -ele 522 -type -beamUniform -4600 
eleLoad -ele 532 -type -beamUniform -4600 
} 

recorder Element -file BMoment.out -ele 112 localForce 
recorder Element -file CForce.out -ele 111 311 511 121 321 521 localForce 
recorder Element -file BrForce.out -ele 123 124 223 224 323 324 423 424 523 524 globalForce 
constraints Plain
numberer Plain
system BandGeneral 
test NormDispIncr 1.e-6 10
algorithm Newton  
integrator LoadControl 1 
analysis Static 
analyze 1 
exit 
