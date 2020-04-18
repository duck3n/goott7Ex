<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sizechart.jsp</title>

<!--사이트 차트 위한 알림폼  -->
<style type="text/css">

	body {
		background-color: #eee8da;
	}
		
	/* html, body{width:100%;height:100%;} */
	
	table {
		border : 1px solid black;
		border-collapse: collapse;
		text-align: center;
		padding: 12px;
		width: 80%;
		margin-left: auto;
		margin-right: auto;
	}
	
	tr, th, td {
		margin-left: auto;
		margin-right: auto;
		border : 1px solid black;
		border-collapse: collapse;
		text-align: center;
		padding: 12px;
	}
	
	
	#chart {
		text-align: center;
		margin: 0 auto;
	}
		
</style>

</head>
<body>
	 <div id="size"> 
        <div id="chart">
        	<div>
           		<h1>사이즈 차트</h1> 
           		<span>의류사이즈</span>
           	</div>
        </div>
         <div>
            <table>
            	<thead>
            		<tr>
            			<th><p>KR</p></th>
            			<th><p>SIZE</p></th>
           				<th><p>NUM</p></th>
           				<th><p>UK/US CHEST</p></th>
           				<th><p>FR/IT/EU</p></th>
           				<th><p>ONE SIZE</p></th>
           			</tr>
           		</thead>
           		<tbody>
           			<tr>
           				<td><p>85</p></td>
           				<td><p>XXS</p></td>
           				<td><p>00</p></td>
           				<td><p>32</p></td>
            			<td><p>42</p></td>
            			<td><p>ONE SIZE</p></td>
            			</tr>
            		<tr>
            			<td><p>90</p></td>
	            		<td><p>XS</p></td>
	            		<td><p>0</p></td>
	            		<td><p>34</p></td>
	            		<td><p>44</p></td>
	            		<td><p>ONE SIZE</p></td>
            		</tr>
            		<tr>
            			<td><p>95</p></td>
            			<td><p>S</p></td>
            			<td><p>1</p></td>
            			<td><p>36</p></td>
            			<td><p>46</p></td>
           				<td><p>ONE SIZE</p></td>
           			</tr>
            		<tr>
            			<td><p>100</p></td>
            			<td><p >M</p></td>
            			<td><p>2</p></td>
            			<td><p>38</p></td>
            			<td><p>48</p></td>
            			<td><p>ONE SIZE</p></td>
            		</tr>
            		<tr>
            			<td><p>105</p></td>
            			<td><p>L</p></td>
            			<td><p>3</p></td>
            			<td><p>40</p></td>
            			<td><p>50</p></td>
            			<td><p >ONE SIZE</p></td>
            		</tr>
            		<tr>
            			<td><p>110</p></td>
            			<td><p>XL</p></td>
            			<td><p>4</p></td>
            			<td><p>42</p></td>
            			<td><p>52</p></td>
            			<td><p>ONE SIZE</p></td>
            		</tr>
            		<tr>
            			<td><p>115</p></td>
            			<td><p>XXL</p></td>
            			<td><p>5</p></td>
            			<td><p>44</p></td>
            			<td><p>54</p></td>
            			<td><p>ONE SIZE</p></td>
            		</tr>
            		<tr>
            			<td><p>120</p></td>
            			<td><p>XXXL</p></td>
            			<td><p>6</p></td>
            			<td><p>46</p></td>
            			<td><p>56</p></td>
            			<td><p>ONE SIZE</p></td>
            		</tr>
           		</tbody>
           	</table>
		</div> 
	</div>
	
	<div id="chart">
        	<div>
           		<h1>사이즈 차트</h1> 
           		<span>신발사이즈</span>
           	</div>
    </div>
	
	<table>
		<thead>
			<tr>
				<th><p>KR</p></th>
				<th><p>US</p></th>
				<th><p>UK</p></th>
				<th><p>EU</p></th>
				<th><p>JP</p></th>
				<th><p>FR</p></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p>230</p></td>
				<td><p>5</p></td>
				<td><p>4</p></td>
				<td><p>38</p></td>
				<td><p>23</p></td>
				<td><p>39</p></td>
			</tr>
			<tr>
				<td><p>235</p></td>
				<td><p>5.5</p></td>
				<td><p>4.5</p></td>
				<td><p>38.5</p></td>
				<td><p>23.5</p></td>
				<td><p>39.5</p></td>
			</tr>
			<tr>
				<td><p>240</p></td>
				<td><p>6</p></td>
				<td><p>5</p></td>
				<td><p>39</p></td>
				<td><p>24</p></td>
				<td><p>40</p></td>
			</tr>
			<tr>
				<td><p>245</p></td>
				<td><p>6.5</p></td>
				<td><p>5.5</p></td>
				<td><p>39.5</p></td>
				<td><p>24.5</p></td>
				<td><p>40.5</p></td>
			</tr>
			<tr>
				<td><p>250</p></td>
				<td><p>7</p></td>
				<td><p>6</p></td>
				<td><p>40</p></td>
				<td><p>25</p></td>
				<td><p>41</p></td>
			</tr>
			<tr>
				<td><p>255</p></td>
				<td><p>7.5</p></td>
				<td><p>6.5</p></td>
				<td><p>40.5</p></td>
				<td><p>25.5</p></td>
				<td><p>41.5</p></td>
			</tr>
			<tr>
				<td><p>260</p></td>
				<td><p>8</p></td>
				<td><p>7</p></td>
				<td><p>41</p></td>
				<td><p>26</p></td>
				<td><p>42</p></td>
			</tr>
			<tr>
				<td><p>265</p></td>
				<td><p>8.5</p></td>
				<td><p>7.5</p></td>
				<td><p>41.5</p></td>
				<td><p>26.5</p></td>
				<td><p>42.5</p></td>
			</tr>
			<tr>
				<td><p>270</p></td>
				<td><p>9</p></td>
				<td><p>8</p></td>
				<td><p>42</p></td>
				<td><p>27</p></td>
				<td><p>43</p></td>
			</tr>
			<tr>
				<td><p>275</p></td>
				<td><p>9.5</p></td>
				<td><p>8.5</p></td>
				<td><p>42.5</p></td>
				<td><p>27.5</p></td>
				<td><p>43.5</p></td>
			</tr>
			<tr>
				<td><p>280</p></td>
				<td><p>10</p></td>
				<td><p>9</p></td>
				<td><p>43</p></td>
				<td><p>28</p></td>
				<td><p>44</p></td>
			</tr>
			<tr>
				<td><p>285</p></td>
				<td><p>10.5</p></td>
				<td><p>9.5</p></td>
				<td><p>43.5</p></td>
				<td><p>28.5</p></td>
				<td><p>44.5</p></td>
			</tr>
			<tr>
				<td><p>290</p></td>
				<td><p>11</p></td>
				<td><p>10</p></td>
				<td><p>44</p></td>
				<td><p>29</p></td>
				<td><p>45</p></td>
			</tr>
			<tr>
				<td><p>295</p></td>
				<td><p>11.5</p></td>
				<td><p>10.5</p></td>
				<td><p">44.5</p></td>
				<td><p>29.5</p></td>
				<td><p>45.5</p></td>
			</tr>
			</tbody>
	</table>
	
	<div id="chart">
        	<div>
           		<h1>사이즈 차트</h1> 
           		<span>벨트사이즈</span>
           	</div>
    </div>
	
	<table>
		<thead>
			<tr>
				<th><p>CM</p></th>
				<th><p>SIZE</p></th>
				<th><p>UK/US/Waist</p></th>
				<th><p>INCHES</p></th>
				<th><p>IT</p></th>
				<th><p>ONE SIZE</p></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p>80</p></td>
				<td><p>XXS</p></td>
				<td><p>26</p></td>
				<td><p>31.5</p></td>
				<td><p>42</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>85</p></td>
				<td><p>XS</p></td>
				<td><p>28</p></td>
				<td><p>33.5</p></td>
				<td><p>44</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>90</p></td>
				<td><p>S</p></td>
				<td><p>30</p></td>
				<td><p>35.4</p></td>
				<td><p>46</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>95</p></td>
				<td><p>M</p></td>
				<td><p>32</p></td>
				<td><p>35.4</p></td>
				<td><p>48</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>100</p></td>
				<td><p>L</p></td>
				<td><p>34</p></td>
				<td><p>39.4</p></td>
				<td><p>50</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>105</p></td>
				<td><p>XL</p></td>
				<td><p>36</p></td>
				<td><p>41.3</p></td>
				<td><p>52</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>110</p></td>
				<td><p>XXL</p></td>
				<td><p>38</p></td>
				<td><p>43.3</p></td>
				<td><p>54</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
			<tr>
				<td><p>115</p></td>
				<td><p>XXXL</p></td>
				<td><p>40</p></td>
				<td><p>45.3</p></td>
				<td><p>56</p></td>
				<td><p>ONE SIZE</p></td>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>