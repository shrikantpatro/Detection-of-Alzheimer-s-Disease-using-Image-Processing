function b1=seg_black_white(z1)
z=z1;
[ro,co]=size(z);
x=ro*co;
new=[]
new_count=1;
new1=[];
new1_count=1;
for c = 1:ro
    for r = 1:co
        meanIntensityValue = mean(z(c,r));
        if  meanIntensityValue==0
        new(new_count)=z(c,r);
        new_count=new_count+1;
        elseif meanIntensityValue==1
        new1(new1_count)=z(c,r);
        new1_count=new1_count+1;
        else
            continue;
        end
    end
end
if new_count>new1_count
    b1="Patient is Affected";
else
    b1="Patient is healthy";
end
disp(new_count);
disp('-----------------------------------------------')
disp(new1_count);







