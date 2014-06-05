It is a Pass of Shuffle Vector

We recognize some pattern of Shuffle Vector and replace them with other instructions

test and result examples:
e.g 
	<test>
		LShr-2-lane-2.ll 
			--- logical shift right number  2
			--- lane number is 2
	<result>	
		res-LShr-2-lane-2.ll
			--- result of recognizing LShr pattern and replace with LShr
		
		res-LShr-2-lane-2.bc
			--- bitcode