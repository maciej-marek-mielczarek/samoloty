t=70;
indir1={'cut_src01/','cut_src02/','cut_src03/','cut_src04/'};
indir2={'01/','03/','05/','07/','09/','11/'};
outdir1={'cut_bw01/','cut_bw02/','cut_bw03/','cut_bw04/'};
outdir2={'01/','02/','03/','04/','05/','06/'};
name_numbers(5,:)=[1 959 960 1052 1053 1190 1191 1417 1418 1640 1641 1821];
name_numbers(4,:)=[235 1193 1194 1286 1287 1424 1441 1667 1725 1947 1977 2157];
name_numbers(1,:)=[321 1279 1333 1425 1463 1600 1706 1932 2150 2372 2399 2579];
name_numbers(2,:)=[321 1279 1305 1397 1406 1543 1592 1818 1909 2131 2179 2359];
name_numbers(3,:)=[320 1278 1283 1375 1383 1520 1567 1793 1864 2086 2133 2313];
n='010000.png';
m=n;
for j = 1%:4
n(2)=int2str(j);
m(2)=int2str(j);
for k = 1%:6
indir = [indir1{j} indir2{k}];
outdir = [outdir1{j} outdir2{k}];
for i = name_numbers(j,2*k-1):name_numbers(j,2*k)

	n(3)=int2str(floor(i/1000)-10*floor(i/10000));
	n(4)=int2str(floor(i/100)-10*floor(i/1000));
	n(5)=int2str(floor(i/10)-10*floor(i/100));
	n(6)=int2str(i-10*floor(i/10));
	
	p=i-name_numbers(j,2*k-1)+name_numbers(5,2*k-1);
	m(3)=int2str(floor(p/1000)-10*floor(p/10000));
	m(4)=int2str(floor(p/100)-10*floor(p/1000));
	m(5)=int2str(floor(p/10)-10*floor(p/100));
	m(6)=int2str(p-10*floor(p/10));
	
	a=imread([indir n]);
	r=a(:,:,1);
	g=a(:,:,2);
	b=a(:,:,3);
	x=(r<t)&(g<t)&(b<t);
	y(:,:,1)=x;
	y(:,:,2)=x;
	y(:,:,3)=x;
	y1=255*(1-y);
	z=a.*y+y1;
	imwrite(z, [outdir 'bw_' m]);
	
	
	
end
end
end
