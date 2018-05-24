t=70;
indir1={'cut_src05/'};
indir2={''};
outdir1={'cut_bw05/'};
outdir2={''};
name_numbers(1,:)=[1 2505];
n='050000.png';
m=n;
for j = 1
for k = 1
indir = [indir1{j} indir2{k}];
outdir = [outdir1{j} outdir2{k}];
for i = name_numbers(j,2*k-1):name_numbers(j,2*k)

	n(3)=int2str(floor(i/1000)-10*floor(i/10000));
	n(4)=int2str(floor(i/100)-10*floor(i/1000));
	n(5)=int2str(floor(i/10)-10*floor(i/100));
	n(6)=int2str(i-10*floor(i/10));
	
	p=i;
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
