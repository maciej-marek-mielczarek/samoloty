indir1={'cut_bw01/','cut_bw02/','cut_bw03/','cut_bw04/'};
indir2={'01/','02/','03/','04/','05/','06/'};
outdir='glued/';
name_numbers=[1 959 960 1052 1053 1190 1191 1417 1418 1640 1641 1821];

n='0000.png';

for k = 1:6
for i = name_numbers(2*k-1):name_numbers(2*k)
	

	n(1)=int2str(floor(i/1000)-10*floor(i/10000));
	n(2)=int2str(floor(i/100)-10*floor(i/1000));
	n(3)=int2str(floor(i/10)-10*floor(i/100));
	n(4)=int2str(i-10*floor(i/10));
	for j=1:4
		b=uint16(imread([indir1{j} indir2{k} 'bw_0' int2str(j) n]));
		if(size(b,3)!=3)
			c(:,:,3)=b;
			c(:,:,2)=b;
			c(:,:,1)=b;
			a{j}=c;
		else
			a{j}=b;
		end
	end
	z=uint8((a{1}+a{2}+a{3}+a{4})/uint16(4));
	imwrite(z, [outdir 'glued_' n]);
end
end