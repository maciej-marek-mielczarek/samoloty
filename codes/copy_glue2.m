indir='glued07/';
outdir='glued07/';
copy_n_in=[960];
copy_n_out=[963 984 1075 1082 1221 1228 1456 1463 1682 1699 1886 1914 2135 2144 2365 2394];
for i=1:8
	for j=copy_n_out(2*i-1):copy_n_out(2*i)
		n='0000';
		n((5-length(int2str(j))):4)=int2str(j);
		copyfile([indir '0960.png'],[outdir n '.png']);
	end
end