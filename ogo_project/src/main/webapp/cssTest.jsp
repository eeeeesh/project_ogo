<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
        /* .flex-container{
            display: flex;
            margin: 5px;
            width: 200px;
            border:1px solid lightgray;
            border-radius: 10px;
            background-color: aliceblue;
            font-size: 24px;
        }
        .flex-container.nowrap{flex-wrap: nowrap; margin-right:50px}
        .flex-container.wrap{flex-wrap: wrap;}
        .flex-container.wrap-reverse{flex-wrap: wrap-reverse;}
        .flex-item{
            min-width: 50px;
            height: 50px;
            margin: 5px;
            text-align: center;
            color: white;
        }
        .color-red{ background-color: darksalmon; }
        .color-blue{ background-color: dodgerblue; }
        .color-green{ background-color: forestgreen; }
        .color-yellow{ background-color: gold; }
        .color-pupple{ background-color: rebeccapurple; }
        .color-orange{ background-color: orange; } */
        
        .flex-container{
            display: flex;
            margin: 5px;
            border:1px solid lightgray;
            border-radius: 10px;
            background-color: aliceblue;
            font-size: 24px;
        }
        .flex-container.row{flex-direction: row;}
        .flex-container.column{flex-direction: column;}
        
        .flex-item{
            width: 50px;
            height: 50px;
            margin: 5px;
            text-align: center;
                      color: white;
        }
        .color-red{ background-color: darksalmon; }
        .color-blue{ background-color: dodgerblue; }
        .color-green{ background-color: forestgreen; }
        .color-yellow{ background-color: gold; }
        .color-pupple{ background-color: rebeccapurple; }
        .color-orange{ background-color: orange; }
</style>
</head>
<body>
<div style="display: flex;">
        <div class="flex-container row">
            <div class="flex-item color-red">1</div>
            <div class="flex-item color-red">2</div>
            <div class="flex-item color-red">3</div>
            <div class="flex-item color-red">4</div>
            <div class="flex-container column">
	            <div class="flex-item color-blue">1</div>
	            <div class="flex-item color-blue">2</div>
	            <div class="flex-item color-blue">3</div>
	            <div class="flex-item color-blue">4</div>
        	</div>
        </div>
        

    </div>
<!-- <div style="display: flex;">
        <div class="flex-container nowrap">
            <div class="flex-item color-red">1</div>
            <div class="flex-item color-red">2</div>
            <div class="flex-item color-red">3</div>
            <div class="flex-item color-red">4</div>
        </div>
        <div class="flex-container wrap">
            <div class="flex-item color-green">1</div>
            <div class="flex-item color-green">2</div>
            <div class="flex-item color-green">3</div>
            <div class="flex-item color-green">4</div>
        </div>
        <div class="flex-container wrap-reverse">
            <div class="flex-item color-blue">1</div>
            <div class="flex-item color-blue">2</div>
            <div class="flex-item color-blue">3</div>
            <div class="flex-item color-blue">4</div>
        </div>
    </div> -->

</body>
</html>