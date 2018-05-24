indir1={'cut_bw06/'};
indir2={'03/','07/','11/','15/'};
outdir='glued06b/';
name_numbers=[367 586 985 1204 1621 1840 2210 2429];

n='bw_050001.png';

for k = 1
for ii = 0:219
	for j=1:4
		i=ii+name_numbers(j*2-1);
		n(6)=int2str(floor(i/1000)-10*floor(i/10000));
		n(7)=int2str(floor(i/100)-10*floor(i/1000));
		n(8)=int2str(floor(i/10)-10*floor(i/100));
		n(9)=int2str(i-10*floor(i/10));
		
		b=uint16(imread([indir1{k} indir2{j} n]));
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