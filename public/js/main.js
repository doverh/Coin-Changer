<script type="text/javascript">
	function validateAmount(){

		var val = document.getElementById('amount').value
		console.log(val);
		if  (isNaN(val))
			alert("Insert an amount with numbers!");
			
	}

</script>