
%right-down solid pattern
pt = zeros(128,128);
pt(101:128,101:128) = 1;
imwrite(pt,'solid_rd.png');
imshow(pt);
sum(pt(:))
%%
%left-up solid pattern
pt = zeros(128,128);
pt(1:28,1:28) = 1;
imwrite(pt,'solid_lu.png');
imshow(pt);
sum(pt(:))
%%
%left-down solid pattern
pt = zeros(128,128);
pt(101:128,1:28) = 1;
imwrite(pt,'solid_ld.png');
imshow(pt);
sum(pt(:))
%%
%right-up solid pattern
pt = zeros(128,128);
pt(1:28,101:128) = 1;
imwrite(pt,'solid_ru.png');
imshow(pt);
sum(pt(:))


%%
%uniform pattern
pt = zeros(128,128);
m = 28*28;
cood = ceil(rand(m,2)*128);
for i=1:m
    pt(cood(i,1),cood(i,2)) = 1;
end
imwrite(pt,'uniform.png');
imshow(pt);
sum(pt(:))

%%
%normal random, left-up pattern
mu = 0.2;
sigma = 0.2;
pt = zeros(128,128);
m = 28*28;
for i=1:m
    z = -1;
    while (z < 0) || (1 < z)
        z = normrnd(mu,sigma);
    end
    i = ceil(abs(z)*128);
    z = -1;
    while (z < 0) || (1 < z)
        z = normrnd(mu,sigma);
    end
    j = ceil(z*128);
    pt(i,j) = 1;
end
imwrite(pt,'normal_lu.png');
imshow(pt);
sum(pt(:))

%%
%normal random, middle pattern
mu = 0.5;
sigma = 0.2;
pt = zeros(128,128);
m = 28*28;
for i=1:m
    z = -1;
    while (z < 0) || (1 < z)
        z = normrnd(mu,sigma);
    end
    i = ceil(z*128);
    z = -1;
    while (z < 0) || (1 < z)
        z = normrnd(mu,sigma);
    end
    j = ceil(z*128);
    pt(i,j) = 1;
end
imwrite(pt,'normal_md.png');
imshow(pt);
sum(pt(:))
%%
for i = 1:8
    subplot(2,8,i);
    a = zeros(32,32);
    a(i*4-3:i*4, i*4-3:i*4) = 1;
    imshow(a);
    ch = num2str(i);
    title(['Pos ',ch]);
end
for i = 1:8
    subplot(2,8,i+8);
    a = zeros(32,32);
    a(19-i:18+i, 19-i:18+i) = 1;
    imshow(a);
    ch = num2str(i*2);
    title([ch,'x',ch]);
end
set(gcf,'Position',[100 100 800 200])
