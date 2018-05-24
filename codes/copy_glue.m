indir={'glued/','glued06a/','glued06b/'};
outdir='glued07/';
in_1=[1 962 963 1052 1053 1190 1191 1417 1418 1635 1636 1821];
in_2=[1898 2117];
in_3=[2210 2429];
out_1=[1 962 985 1074 1083 1220 1229 1455 1464 1681 1700 1885];
out_2=[1915 2134];
out_3=[2145 2364];
k=1;
n1='0001';
n2='0001';
for i=1:6
	j=in_1(2*i-1);
	for k=out_1(i*2-1):out_1(i*2)
		n1='0000';
		n2='0000';
		n1((5-length(int2str(j))):4)=int2str(j);
		n2((5-length(int2str(k))):4)=int2str(k);
		copyfile([indir{1} 'glued_' n1 '.png'],[outdir n2 '.png']);
		j=j+1;
	end
end

n1='0001';
n2='0001';
k=out_2(1);
for i=1
	for j=in_2(1):in_2(2)
		n1='0001';
		n2='0001';
		n1((5-length(int2str(j))):4)=int2str(j);
		n2((5-length(int2str(k))):4)=int2str(k);
		copyfile([indir{2} 'glued_bw_05' n1 '.png'],[outdir n2 '.png']);
		k=k+1;
	end
end

n1='0001';
n2='0001';
k=out_3(1);
for i=1
	for j=in_3(1):in_3(2)
		n1='0001';
		n2='0001';
		n1((5-length(int2str(j))):4)=int2str(j);
		n2((5-length(int2str(k))):4)=int2str(k);
		copyfile([indir{3} 'glued_bw_05' n1 '.png'],[outdir n2 '.png']);
		k=k+1;
	end
end