% 施密特正交化函数
function b=schmidt(a)
a=sym(a);
[~,n]=size(a);
e(:,1)=a(:,1)/norm(a(:,1));
for j=2:n
    bj=a(:,j);
    for i=1:j-1
        bj=bj-(e(:,j)'*bj)*e(:,i);
    end
    e=zeros(a);
    e(:,j)=bj/norm(bj);          %归一化
end
b=simplify(e);