clear
vcards=input('your cards?');
didyouwin=zeros(3,1000);
cards=[1:52];
cards([vcards(1) vcards(2)])=[];
for q=1:1000
x=randperm(50,13);
vcards=[vcards(1:2) cards(x(11:13))];
wcards=[cards(x(1:2)),cards(x(11:13))];
xcards=[cards(x(3:4)),cards(x(11:13))];
ycards=[cards(x(5:6)),cards(x(11:13))];
zcards=[cards(x(7:8)),cards(x(11:13))];
fourthstreet=cards(x(9));
fifthstreet=cards(x(10));
wranking=0;
vranking=0;
xranking=0;
yranking=0;
zranking=0;
if any(hist(rem(wcards,4),50)==5)
    wranking=6;
end
if any(hist(rem(vcards,4),50)==5)
    vranking=6;
end
if any(hist(rem(xcards,4),50)==5)
    xranking=6;
end
if any(hist(rem(ycards,4),50)==5)
    yranking=6;
end
if any(hist(rem(zcards,4),50)==5)
    zranking=6;
end
vnum=ceil(vcards./4)+1;
wnum=ceil(wcards./4)+1;
xnum=ceil(xcards./4)+1;
ynum=ceil(ycards./4)+1;
znum=ceil(zcards./4)+1;
vnumsorted=sort(vnum);
wnumsorted=sort(wnum);
xnumsorted=sort(xnum);
ynumsorted=sort(ynum);
znumsorted=sort(znum);


if length(wnumsorted(1):wnumsorted(5))==5 && length(unique(wnumsorted))==5 || length(wnumsorted(1):wnumsorted(4))==4 && wnumsorted(4)==5 && wnumsorted(5)==14
        if wranking==6
            wranking=9;
        else
            wranking=5;
        end
end
     if length(vnumsorted(1):vnumsorted(5))==5 && length(unique(vnumsorted))==5 || length(vnumsorted(1):vnumsorted(4))==4 && vnumsorted(4)==5 && vnumsorted(5)==14
        
        if vranking==6
            vranking=9;
        else
            vranking=5;
        end
        
     end

    if length(xnumsorted(1):xnumsorted(5))==5 && length(unique(xnumsorted))==5 || length(xnumsorted(1):xnumsorted(4))==4 && xnumsorted(4)==5 && xnumsorted(5)==14
        
        if xranking==6
            xranking=9;
        else
            xranking=5;
        end
        
    end
    if length(ynumsorted(1):ynumsorted(5))==5 && length(unique(ynumsorted))==5 || length(ynumsorted(1):ynumsorted(4))==4 && ynumsorted(4)==5 && ynumsorted(5)==14
        
        if yranking==6
            yranking=9;
        else
            yranking=5;
        end
        
    end
    if length(znumsorted(1):znumsorted(5))==5 && length(unique(znumsorted))==5 || length(znumsorted(1):znumsorted(4))==4 && znumsorted(4)==5 && znumsorted(5)==14
        
        if zranking==6
            zranking=9;
        else
            zranking=5;
        end
        
    end


vpairs=unique(vnum);
vpairranking=length(unique(vnum));
vdata=hist(vnum,50);
if vranking==0
switch vpairranking
    case 2
        if length(find(vdata==3))==1
       vranking=7;
        end
        if length(find(vdata==4))==1
       vranking=8;
        end
    case 3
        if length(find(vdata==3))==1
            vranking=4;
        end
        if length(find(vdata==3))==0
            vranking=3;
        end
    case 4
        vranking=2;
    case 5
        vranking=1;
end
end


wpairs=unique(wnum);
wpairranking=length(unique(wnum));
wdata=hist(wnum,13);
if wranking==0
switch wpairranking
    case 2
        if length(find(wdata==3))==1
       wranking=7;
        end
        if length(find(wdata==4))==1
       wranking=8;
        end
    case 3
        if length(find(wdata==3))==1
            wranking=4;
        end
        if length(find(wdata==3))==0
            wranking=3;
        end
    case 4
        wranking=2;
    case 5
        wranking=1;
end
end

xpairs=unique(xnum);
xpairranking=length(unique(xnum));
xdata=hist(xnum,13);
if xranking==0
switch xpairranking
    case 2
        if length(find(xdata==3))==1
       xranking=7;
        end
        if length(find(xdata==4))==1
       xranking=8;
        end
    case 3
        if length(find(xdata==3))==1
            xranking=4;
        end
        if length(find(xdata==3))==0
            xranking=3;
        end
    case 4
        xranking=2;
    case 5
        xranking=1;
end
end

ypairs=unique(ynum);
ypairranking=length(unique(ynum));
ydata=hist(ynum,13);
if yranking==0
switch ypairranking
    case 2
        if length(find(ydata==3))==1
       yranking=7;
        end
        if length(find(ydata==4))==1
       yranking=8;
        end
    case 3
        if length(find(ydata==3))==1
            yranking=4;
        end
        if length(find(ydata==3))==0
            yranking=3;
        end
    case 4
        yranking=2;
    case 5
        yranking=1;
end
end

zpairs=unique(znum);
zpairranking=length(unique(znum));
zdata=hist(znum,13);
if zranking==0
switch zpairranking
    case 2
        if length(find(zdata==3))==1
       zranking=7;
        end
        if length(find(zdata==4))==1
       zranking=8;
        end
    case 3
        if length(find(zdata==3))==1
            zranking=4;
        end
        if length(find(zdata==3))==0
            zranking=3;
        end
    case 4
        zranking=2;
    case 5
        zranking=1;
end
end
othersray=[wranking xranking yranking zranking];
othersnum=[wnum; xnum; ynum; znum];

whotied=find(vranking==othersray);
if any(vranking==othersray)
othersnum=othersnum(whotied,:);
othersnumt=transpose(othersnum);
othersnumsorted=sort(othersnum,2);
othersnumex=othersnum(1,:);

end
didyouwin(1,q)=1;
if all(vranking>othersray)
    didyouwin(1,q)=2;
end
if vranking<max(othersray)
    didyouwin(1,q)=0;
end

if didyouwin(1,q)==1
    switch vranking
         case 7
            didyouwin(1,q)=0;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(1,q)=2;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                
                if mode(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(1,q)=2;
                end
                 if mode(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(1,q)=1;
                end
            end
        case 6
                  
           for a=1:5
              if vnumsorted(6-a)>max(othersnumsorted(:,6-a))
                   didyouwin(1,q)=2;
                   break
              end
                 if vnumsorted(6-a)<max(othersnumsorted(:,6-a))
                   didyouwin(1,q)=0;
                   break
              end
              didyouwin(1,q)=1;
           end
           
         case 5
            didyouwin(1,q)=0;
            if all(max(vnum)>(othersnum))
                didyouwin(1,q)=2;
            end
            if max(vnum)==max(max(othersnum))
                didyouwin(1,q)=1;
            end
        case 4
                didyouwin(1,q)=0;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(1,q)=2;
            end
         if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(1,q)=2;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(1,q)=2;
                    end
                    if max(vnum)==max(othersnum)
                        didyouwin(1,q)=1;
                    end
                   
                end
            end
            
        case 3
            didyouwin(1,q)=2;
           for a=1:length(whotied)
               othersnumvec=othersnum(a,:);
           
      if mode(vnum(vnum~=mode(vnum)))<mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
          didyouwin(1,q)=0;
          break
      end
      
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
                if mode(vnum)<mode(othersnum)
                    didyouwin(1,q)=0;
                    break
                end
            end
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec))) && mode(vnum)==mode(othersnumvec)
            if sum(vnum)<sum(othersnumvec)
                didyouwin(1,q)=0;
                break
            end
           if sum(vnum)==sum(othersnumvec)
                didyouwin(1,q)=1;
                
            end
            end
    
            
           end
            
            
        case 2
                  didyouwin(1,q)=0;
            if mode(vnum)>max(max(mode(transpose(othersnum))))
                didyouwin(1,q)=2;
            end
            if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(1,q)=2;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(1,q)=2;
                    end
                    if max(vnum)==max(othersnum)
                        vnum(vnum==max(vnum))=[];
                        othersnum(othersnum==max(othersnum))=[];
                        if max(vnum)>max(othersnum)
                        didyouwin(1,q)=2;
                        end
                         if max(vnum)==max(othersnum)
                        didyouwin(1,q)=1;
                        end
                    end
                     
                end
            end
        case 1
            didyouwin(1,q)=0;
            if all(max(vnum(1:2))>max(transpose(othersnum(:,1:2))))
                didyouwin(1,q)=2;
            end
            if max(vnum(1:2))==max(max(transpose(othersnum(:,1:2))))
                didyouwin(1,q)=1;
            end
            end
end


wcards=[wcards fourthstreet];
vcards=[vcards fourthstreet];
xcards=[xcards fourthstreet];
ycards=[ycards fourthstreet];
zcards=[zcards fourthstreet];


vnum=ceil(vcards./4)+1;
wnum=ceil(wcards./4)+1;
xnum=ceil(xcards./4)+1;
ynum=ceil(ycards./4)+1;
znum=ceil(zcards./4)+1;
vnumsorted=sort(vnum);
wnumsorted=sort(wnum);
xnumsorted=sort(xnum);
ynumsorted=sort(ynum);
znumsorted=sort(znum);
uvnumsorted=unique(sort(vnum));
uwnumsorted=unique(sort(wnum));
uxnumsorted=unique(sort(xnum));
uynumsorted=unique(sort(ynum));
uznumsorted=unique(sort(znum));
vfsorted=[0 0 0 0 0];
wfsorted=[0 0 0 0 0];
xfsorted=[0 0 0 0 0];
yfsorted=[0 0 0 0 0];
zfsorted=[0 0 0 0 0];
wtop=0;
xtop=0;
ytop=0;
ztop=0;

if any(hist(rem(wcards,4),50)>=5)
    wfsorted=wnumsorted(rem(wcards,4)==mode(rem(wcards,4)));
    if length(wfsorted)==6
    wfsorted(1)=[];
    end
  
    wranking=6;
end
if any(hist(rem(vcards,4),50)>=5)
     vfsorted=vnumsorted(rem(vcards,4)==mode(rem(vcards,4)));
     if length(vfsorted)==6
    vfsorted(1)=[];
    end
    
    vranking=6;
end
if any(hist(rem(xcards,4),50)>=5)
     xfsorted=xnumsorted(rem(xcards,4)==mode(rem(xcards,4)));
     if length(xfsorted)==6
    xfsorted(1)=[];
    end
   
    xranking=6;
end
if any(hist(rem(ycards,4),50)>=5)
     yfsorted=ynumsorted(rem(ycards,4)==mode(rem(ycards,4)));
     if length(yfsorted)==6
    yfsorted(1)=[];
    end
     
    yranking=6;
end
if any(hist(rem(zcards,4),50)>=5)
     zfsorted=znumsorted(rem(zcards,4)==mode(rem(zcards,4)));
     if length(zfsorted)==6
    zfsorted(1)=[];
    end
  
    zranking=6;
end

    switch length(uwnumsorted)
        case 6
            if length(wnumsorted(1):wnumsorted(5))==5 || length(wnumsorted(2):wnumsorted(6))==5 || wnumsorted(4)==5 && wnumsorted(6)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
            end
        case 5
              if length(uwnumsorted(1):uwnumsorted(5))==5 || uwnumsorted(4)==5 && uwnumsorted(5)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
              end
        
            
    end
      switch length(uvnumsorted)
        case 6
            if length(vnumsorted(1):vnumsorted(5))==5 || length(vnumsorted(2):vnumsorted(6))==5 || vnumsorted(4)==5 && vnumsorted(6)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
        case 5
              if length(uvnumsorted(1):uvnumsorted(5))==5 || uvnumsorted(4)==5 && uvnumsorted(5)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
            end

     switch length(uxnumsorted)
        case 6
            if length(xnumsorted(1):xnumsorted(5))==5 || length(xnumsorted(2):xnumsorted(6))==5 || xnumsorted(4)==5 && xnumsorted(6)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
        case 5
              if length(uxnumsorted(1):uxnumsorted(5))==5 || uxnumsorted(4)==5 && uxnumsorted(5)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
            end
    switch length(uynumsorted)
        case 6
            if length(ynumsorted(1):ynumsorted(5))==5 || length(ynumsorted(2):ynumsorted(6))==5 || ynumsorted(4)==5 && ynumsorted(6)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
        case 5
              if length(uynumsorted(1):uynumsorted(5))==5 || uynumsorted(4)==5 && uynumsorted(5)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
            end
        
    
     switch length(uznumsorted)
        case 6
            if length(znumsorted(1):znumsorted(5))==5 || length(znumsorted(2):znumsorted(6))==5 || znumsorted(4)==5 && znumsorted(6)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
        case 5
              if length(uznumsorted(1):uznumsorted(5))==5 || uznumsorted(4)==5 && uznumsorted(5)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
            end



vpairranking=length(unique(vnum));
vdata=hist(vnum,50);
if vranking~=5 && vranking~=6 && vranking~=9
switch vpairranking
    case 3
        if length(find(vdata==3))==1
       vranking=7;
        end
        if length(find(vdata==4))==1
       vranking=8;
        end
    case 4
        if length(find(vdata==3))==1
            vranking=4;
        end
        if length(find(vdata==3))==0
            vranking=3;
        end
    case 5
        vranking=2;
    case 6
        vranking=1;
end
end



wpairranking=length(unique(wnum));
wdata=hist(wnum,13);
if wranking~=5 && wranking~=6 && wranking~=9
switch wpairranking
    case 3
        if length(find(wdata==3))==1
       wranking=7;
        end
        if length(find(wdata==4))==1
       wranking=8;
        end
    case 4
        if length(find(wdata==3))==1
            wranking=4;
        end
        if length(find(wdata==3))==0
            wranking=3;
        end
    case 5
        wranking=2;
    case 6
        wranking=1;
end
end


xpairranking=length(unique(xnum));
xdata=hist(xnum,13);
if xranking~=5 && xranking~=6 && xranking~=9
switch xpairranking
    case 3
        if length(find(xdata==3))==1
       xranking=7;
        end
        if length(find(xdata==4))==1
       xranking=8;
        end
    case 4
        if length(find(xdata==3))==1
            xranking=4;
        end
        if length(find(xdata==3))==0
            xranking=3;
        end
    case 5
        xranking=2;
    case 6
        xranking=1;
end
end


ypairranking=length(unique(ynum));
ydata=hist(ynum,13);
if yranking~=5 && yranking~=6 && yranking~=9
switch ypairranking
    case 3
        if length(find(ydata==3))==1
       yranking=7;
        end
        if length(find(ydata==4))==1
       yranking=8;
        end
    case 4
        if length(find(ydata==3))==1
            yranking=4;
        end
        if length(find(ydata==3))==0
            yranking=3;
        end
    case 5
        yranking=2;
    case 6
        yranking=1;
end
end


zpairranking=length(unique(znum));
zdata=hist(znum,13);
if zranking~=5 && wranking~=6 && wranking~=9
switch zpairranking
    case 3
        if length(find(zdata==3))==1
       zranking=7;
        end
        if length(find(zdata==4))==1
       zranking=8;
        end
    case 4
        if length(find(zdata==3))==1
            zranking=4;
        end
        if length(find(zdata==3))==0
            zranking=3;
        end
    case 5
        zranking=2;
    case 6
        zranking=1;
end
end
othersray=[wranking xranking yranking zranking];
othersnum=[wnum; xnum; ynum; znum];
whotied=find(vranking==othersray);
if any(vranking==othersray)
othersnum=othersnum(whotied,:);
othersnumt=transpose(othersnum);
othersnumfsorted=[wfsorted;xfsorted;yfsorted;zfsorted];
othersnumsorted=sort(othersnum,2);
othersnumex=othersnum(1,:);

end
didyouwin(2,q)=1;
if all(vranking>othersray)
    didyouwin(2,q)=2;
end
if vranking<max(othersray)
    didyouwin(2,q)=0;
end
if didyouwin(2,q)==1
    switch vranking
        case 9
            didyouwin(2,q)=0;
          if all(vtop>[wtop xtop ytop ztop])
              didyouwin(2,q)=2;
          end
          if vtop==max([wtop xtop ytop ztop])
              didyouwin(2,q)=1;
          end
        case 8
            didyouwin(2,q)=0;
            if all(mode(vnum)>mode(transpose(othersnum)))
                didyouwin(2,q)=2;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                if vnum(vnum~=mode(vnum))>max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(2,q)=2;
                end
                 if vnum(vnum~=mode(vnum))==max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(2,q)=1;
                end
            end
        case 7
            didyouwin(2,q)=0;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(2,q)=2;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                
                if mode(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(2,q)=2;
                end
                 if mode(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(2,q)=1;
                end
            end
        case 6
                    didyouwin(2,q)=0;
           for a=1:5
              if vfsorted(6-a)>max(othersnumfsorted(:,6-a))
                   didyouwin(2,q)=2;
                   break
              end
              didyouwin(2,q)=1;
           end
           
           
         case 5
            didyouwin(2,q)=0;
          if all(vtop>[wtop xtop ytop ztop])
              didyouwin(2,q)=2;
          end
          if vtop==max([wtop xtop ytop ztop])
              didyouwin(2,q)=1;
          end
        case 4
            didyouwin(2,q)=0;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(2,q)=2;
            end
         if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(2,q)=2;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(2,q)=2;
                    end
                    if max(vnum)==max(othersnum)
                        didyouwin(2,q)=1;
                    end
                   
                end
            end
        case 3
            didyouwin(2,q)=2;
           for a=1:length(whotied)
               othersnumvec=othersnum(a,:);
           
      if mode(vnum(vnum~=mode(vnum)))<mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
          didyouwin(2,q)=0;
          break
      end
      
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
                if mode(vnum)<mode(othersnumvec)
                    didyouwin(2,q)=0;
                    break
                end
            end
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec))) && mode(vnum)==mode(othersnumvec)
         vnum(vnum==mode(vnum))=[];
        vnum(vnum==mode(vnum))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        if max(vnum)<max(othersnumvec)
            didyouwin(2,q)=0;
            break
        end
         if max(vnum)==max(othersnumvec)
            didyouwin(2,q)=1;
            
        end
            end
    
            
           end
            
            
        case 2
              didyouwin(2,q)=0;
            if mode(vnum)>max(max(mode(transpose(othersnum))))
                didyouwin(2,q)=2;
            end
            if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(2,q)=2;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(2,q)=2;
                    end
                    if max(vnum)==max(othersnum)
                        vnum(vnum==max(vnum))=[];
                        othersnum(othersnum==max(othersnum))=[];
                        if max(vnum)>max(othersnum)
                        didyouwin(2,q)=2;
                        end
                         if max(vnum)==max(othersnum)
                        didyouwin(2,q)=1;
                        end
                    end
                     
                end
            end
        case 1
            didyouwin(2,q)=0;
            if all(max(vnum(1:2))>max(transpose(othersnum(:,1:2))))
                didyouwin(2,q)=2;
            end
            if max(vnum(1:2))==max(max(transpose(othersnum(:,1:2))))
                didyouwin(2,q)=1;
            end
            end
end


wcards=[wcards fifthstreet];
vcards=[vcards fifthstreet];
xcards=[xcards fifthstreet];
ycards=[ycards fifthstreet];
zcards=[zcards fifthstreet];


vnum=ceil(vcards./4)+1;
wnum=ceil(wcards./4)+1;
xnum=ceil(xcards./4)+1;
ynum=ceil(ycards./4)+1;
znum=ceil(zcards./4)+1;
vnumsorted=sort(vnum);
wnumsorted=sort(wnum);
xnumsorted=sort(xnum);
ynumsorted=sort(ynum);
znumsorted=sort(znum);
uvnumsorted=unique(sort(vnum));
uwnumsorted=unique(sort(wnum));
uxnumsorted=unique(sort(xnum));
uynumsorted=unique(sort(ynum));
uznumsorted=unique(sort(znum));
vhist=hist(vnumsorted,14);
wtop=0;
xtop=0;
ytop=0;
ztop=0;
wfsorted=zeros(1,5);
vfsorted=zeros(1,5);
xfsorted=zeros(1,5);
yfsorted=zeros(1,5);
zfsorted=zeros(1,5);
if any(hist(rem(wcards,4),50)>=5)
    wfsorted=wnumsorted(rem(wcards,4)==mode(rem(wcards,4)));
    if length(wfsorted)==6
    wfsorted(1)=[];
    end
    if length(wfsorted)==7
    wfsorted([1 2])=[];
    end
 
    wranking=6;
end
if any(hist(rem(vcards,4),50)>=5)
     vfsorted=vnumsorted(rem(vcards,4)==mode(rem(vcards,4)));
     if length(vfsorted)==6
    vfsorted(1)=[];
     end
     if length(vfsorted)==7
    vfsorted([1 2])=[];
     end
   
    vranking=6;
end
if any(hist(rem(xcards,4),50)>=5)
     xfsorted=xnumsorted(rem(xcards,4)==mode(rem(xcards,4)));
     if length(xfsorted)==6
    xfsorted(1)=[];
     end
     if length(xfsorted)==7
    xfsorted([1 2])=[];
     end
    
    xranking=6;
end
if any(hist(rem(ycards,4),50)>=5)
     yfsorted=ynumsorted(rem(ycards,4)==mode(rem(ycards,4)));
     if length(yfsorted)==6
    yfsorted(1)=[];
     end
     if length(yfsorted)==7
    yfsorted([1 2])=[];
     end
    
    yranking=6;
end
if any(hist(rem(zcards,4),50)>=5)
     zfsorted=znumsorted(rem(zcards,4)==mode(rem(zcards,4)));
     if length(zfsorted)==6
    zfsorted(1)=[];
     end
     if length(zfsorted)==7
    zfsorted([1 2])=[];
     end
    
    zranking=6;
end

    switch length(uwnumsorted)
        case 7
            if length(wnumsorted(1):wnumsorted(5))==5 || length(wnumsorted(2):wnumsorted(6))==5 || length(wnumsorted(3):wnumsorted(7))==5 || wnumsorted(4)==5 && wnumsorted(7)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
            end
        case 6
              if length(uwnumsorted(1):uwnumsorted(5))==5 || length(uwnumsorted(2):uwnumsorted(6))==5 || uwnumsorted(4)==5 && uwnumsorted(6)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
              end
                 case 5
              if length(uwnumsorted(1):uwnumsorted(5))==5 || uwnumsorted(4)==5 && uwnumsorted(5)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
            end
 end
      switch length(uvnumsorted)
        case 7
            if length(vnumsorted(1):vnumsorted(5))==5 || length(vnumsorted(2):vnumsorted(6))==5 || length(vnumsorted(3):vnumsorted(7))==5 || vnumsorted(4)==5 && vnumsorted(7)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
        case 6
              if length(uvnumsorted(1):uvnumsorted(5))==5 || length(uvnumsorted(2):uvnumsorted(6))==5 || uvnumsorted(4)==5 && uvnumsorted(6)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
              end
                 case 5
              if length(uvnumsorted(1):uvnumsorted(5))==5 || uvnumsorted(4)==5 && uvnumsorted(5)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
            end

    switch length(uxnumsorted)
        case 7
            if length(xnumsorted(1):xnumsorted(5))==5 || length(xnumsorted(2):xnumsorted(6))==5 || length(xnumsorted(3):xnumsorted(7))==5 || xnumsorted(4)==5 && xnumsorted(7)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
        case 6
              if length(uxnumsorted(1):uxnumsorted(5))==5 || length(uxnumsorted(2):uxnumsorted(6))==5 || uxnumsorted(4)==5 && uxnumsorted(6)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
              end
                 case 5
              if length(uxnumsorted(1):uxnumsorted(5))==5 || uxnumsorted(4)==5 && uxnumsorted(5)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
 end

   switch length(uynumsorted)
        case 7
            if length(ynumsorted(1):ynumsorted(5))==5 || length(ynumsorted(2):ynumsorted(6))==5 || length(ynumsorted(3):ynumsorted(7))==5 || ynumsorted(4)==5 && ynumsorted(7)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
        case 6
              if length(uynumsorted(1):uynumsorted(5))==5 || length(uynumsorted(2):uynumsorted(6))==5 || uynumsorted(4)==5 && uynumsorted(6)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
              end
                 case 5
              if length(uynumsorted(1):uynumsorted(5))==5 || uynumsorted(4)==5 && uynumsorted(5)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
 end

     switch length(uznumsorted)
        case 7
            if length(znumsorted(1):znumsorted(5))==5 || length(znumsorted(2):znumsorted(6))==5 || length(znumsorted(3):znumsorted(7))==5 || znumsorted(4)==5 && znumsorted(7)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
        case 6
              if length(uznumsorted(1):uznumsorted(5))==5 || length(uznumsorted(2):uznumsorted(6))==5 || uznumsorted(4)==5 && uznumsorted(6)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
              end
                 case 5
              if length(uznumsorted(1):uznumsorted(5))==5 || uznumsorted(4)==5 && uznumsorted(5)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
 end


vpairranking=length(unique(vnum));
vdata=hist(vnum,50);
if vranking~=5 && vranking~=6 && vranking~=9
switch vpairranking
    case 4
        if length(find(vdata==3))==1
       vranking=7;
        end
        if length(find(vdata==4))==1
       vranking=8;
        end
    case 5
        if length(find(vdata==3))==1
            vranking=4;
        end
        if length(find(vdata==3))==0
            vranking=3;
        end
    case 6
        vranking=2;
    case 7
        vranking=1;
end
end



wpairranking=length(unique(wnum));
wdata=hist(wnum,13);
if wranking~=5 && wranking~=6 && wranking~=9
switch wpairranking
    case 4
        if length(find(wdata==3))==1
       wranking=7;
        end
        if length(find(wdata==4))==1
       wranking=8;
        end
    case 5
        if length(find(wdata==3))==1
            wranking=4;
        end
        if length(find(wdata==3))==0
            wranking=3;
        end
    case 6
        wranking=2;
    case 7
        wranking=1;
end
end


xpairranking=length(unique(xnum));
xdata=hist(xnum,13);
if xranking~=5 && xranking~=6 && xranking~=9
switch xpairranking
    case 4
        if length(find(xdata==3))==1
       xranking=7;
        end
        if length(find(xdata==4))==1
       xranking=8;
        end
    case 5
        if length(find(xdata==3))==1
            xranking=4;
        end
        if length(find(xdata==3))==0
            xranking=3;
        end
    case 6
        xranking=2;
    case 7
        xranking=1;
end
end


ypairranking=length(unique(ynum));
ydata=hist(ynum,13);
if yranking~=5 && yranking~=6 && yranking~=9
switch ypairranking
    case 4
        if length(find(ydata==3))==1
       yranking=7;
        end
        if length(find(ydata==4))==1
       yranking=8;
        end
    case 5
        if length(find(ydata==3))==1
            yranking=4;
        end
        if length(find(ydata==3))==0
            yranking=3;
        end
    case 6
        yranking=2;
    case 7
        yranking=1;
end
end


zpairranking=length(unique(znum));
zdata=hist(znum,13);
if zranking~=5 && wranking~=6 && wranking~=9
switch zpairranking
    case 4
        if length(find(zdata==3))==1
       zranking=7;
        end
        if length(find(zdata==4))==1
       zranking=8;
        end
    case 5
        if length(find(zdata==3))==1
            zranking=4;
        end
        if length(find(zdata==3))==0
            zranking=3;
        end
    case 6
        zranking=2;
    case 7
        zranking=1;
end
end
othersray=[wranking xranking yranking zranking];
othersnum=[wnum; xnum; ynum; znum];
whotied=find(vranking==othersray);
if any(vranking==othersray)
othersnum=othersnum(whotied,:);
othersnumt=transpose(othersnum);
othersnumf=[wfsorted;xfsorted;yfsorted;zfsorted];
othersnumsorted=sort(othersnum,2);
othersnumfsorted=sort(othersnum,2);
othersnumex=othersnum(1,:);

end
didyouwin(3,q)=1;
if all(vranking>othersray)
    didyouwin(3,q)=2;
end
if vranking<max(othersray)
    didyouwin(3,q)=0;
end
if didyouwin(3,q)==1
    switch vranking
        case 9
              didyouwin(3,q)=0;
          if all(vtop>[wtop xtop ytop ztop])
              didyouwin(3,q)=2;
          end
          if vtop==max([wtop xtop ytop ztop])
              didyouwin(3,q)=1;
          end
        case 8
            didyouwin(3,q)=0;
            if all(mode(vnum)>mode(transpose(othersnum)))
                didyouwin(3,q)=2;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                if vnum(vnum~=mode(vnum))>max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(3,q)=2;
                end
                 if vnum(vnum~=mode(vnum))==max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(3,q)=1;
                end
            end
        case 7
            didyouwin(3,q)=0;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(3,q)=2;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                
                if mode(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(3,q)=2;
                end
                 if mode(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(3,q)=1;
                end
            end
        case 6
                    didyouwin(3,q)=0;
           for a=1:5
              if vfsorted(6-a)>max(othersnumfsorted(:,6-a))
                   didyouwin(3,q)=2;
                   break
              end
              didyouwin(3,q)=1;
           end
           
           
         case 5
            didyouwin(3,q)=0;
          if all(vtop>[wtop xtop ytop ztop])
              didyouwin(3,q)=2;
          end
          if vtop==max([wtop xtop ytop ztop])
              didyouwin(3,q)=1;
          end
        case 4
            didyouwin(3,q)=0;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(3,q)=2;
            end
         if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(3,q)=2;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(3,q)=2;
                    end
                    if max(vnum)==max(othersnum)
                        didyouwin(3,q)=1;
                    end
                   
                end
            end
        case 3
    didyouwin(3,q)=2;
           for a=1:length(whotied)
               othersnumvec=othersnum(a,:);
           
      if mode(vnum(vnum~=mode(vnum)))<mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
          didyouwin(3,q)=0;
          break
      end
      
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
                if mode(vnum)<mode(othersnumvec)
                    didyouwin(3,q)=0;
                    break
                end
            end
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec))) && mode(vnum)==mode(othersnumvec)
        vnum(vnum==mode(vnum))=[];
        vnum(vnum==mode(vnum))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        if max(vnum)<max(othersnumvec)
            didyouwin(3,q)=0;
            break
        end
         if max(vnum)==max(othersnumvec)
            didyouwin(3,q)=1;
            
        end
            end
    
            
           end
            
            
            
        case 2
              didyouwin(3,q)=0;
            if mode(vnum)>max(max(mode(transpose(othersnum))))
                didyouwin(3,q)=2;
            end
            if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(3,q)=2;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(3,q)=2;
                    end
                    if max(vnum)==max(othersnum)
                        vnum(vnum==max(vnum))=[];
                        othersnum(othersnum==max(othersnum))=[];
                        if max(vnum)>max(othersnum)
                        didyouwin(3,q)=2;
                        end
                         if max(vnum)==max(othersnum)
                        didyouwin(3,q)=1;
                        end
                    end
                     
                end
            end
        case 1
            didyouwin(3,q)=0;
            if all(max(vnum(1:2))>max(transpose(othersnum(:,1:2))))
                didyouwin(3,q)=2;
            end
            if max(vnum(1:2))==max(max(transpose(othersnum(:,1:2))))
                didyouwin(3,q)=1;
            end
            end
end

end


winortiepercent=[0 0 0];
for s=1:3
wins=length(find(didyouwin(s,:)==2));
ties=length(find(didyouwin(s,:)==1));
winortiepercent(s)=(wins+ties)/1000;
end

winortiepercent=winortiepercent*100;
odds=(100-winortiepercent)./winortiepercent



flop=input('flop?');
vcards(3:5)=flop;
cards=1:52;
cards([vcards(1) vcards(2) vcards(3) vcards(4) vcards(5)])=[];
analysiss=zeros(6,9);


for q=1:1000
vcards=vcards(1:5);
x=randperm(47,10);
wcards=[cards(x(1:2)),vcards(3:5)];
xcards=[cards(x(3:4)),vcards(3:5)];
ycards=[cards(x(5:6)),vcards(3:5)];
zcards=[cards(x(7:8)),vcards(3:5)];
fourthstreet=cards(x(9));
fifthstreet=cards(x(10));


wranking=0;
vranking=0;
xranking=0;
yranking=0;
zranking=0;
if any(hist(rem(wcards,4),50)==5)
    wranking=6;
end
if any(hist(rem(vcards,4),50)==5)
    vranking=6;
end
if any(hist(rem(xcards,4),50)==5)
    xranking=6;
end
if any(hist(rem(ycards,4),50)==5)
    yranking=6;
end
if any(hist(rem(zcards,4),50)==5)
    zranking=6;
end
vnum=ceil(vcards./4)+1;
wnum=ceil(wcards./4)+1;
xnum=ceil(xcards./4)+1;
ynum=ceil(ycards./4)+1;
znum=ceil(zcards./4)+1;
vnumsorted=sort(vnum);
wnumsorted=sort(wnum);
xnumsorted=sort(xnum);
ynumsorted=sort(ynum);
znumsorted=sort(znum);


if length(wnumsorted(1):wnumsorted(5))==5 && length(unique(wnumsorted))==5 || length(wnumsorted(1):wnumsorted(4))==4 && wnumsorted(4)==5 && wnumsorted(5)==14 && length(unique(wnumsorted))==5
        if wranking==6
            wranking=9;
        else
            wranking=5;
        end
end
     if length(vnumsorted(1):vnumsorted(5))==5 && length(unique(vnumsorted))==5 || length(vnumsorted(1):vnumsorted(4))==4 && vnumsorted(4)==5 && vnumsorted(5)==14 && length(unique(vnumsorted))==5
        
        if vranking==6
            vranking=9;
        else
            vranking=5;
        end
        
     end

    if length(xnumsorted(1):xnumsorted(5))==5 && length(unique(xnumsorted))==5 || length(xnumsorted(1):xnumsorted(4))==4 && xnumsorted(4)==5 && xnumsorted(5)==14 && length(unique(xnumsorted))==5
        
        if xranking==6
            xranking=9;
        else
            xranking=5;
        end
        
    end
    if length(ynumsorted(1):ynumsorted(5))==5 && length(unique(ynumsorted))==5 || length(ynumsorted(1):ynumsorted(4))==4 && ynumsorted(4)==5 && ynumsorted(5)==14 && length(unique(ynumsorted))==5
        
        if yranking==6
            yranking=9;
        else
            yranking=5;
        end
        
    end
    if length(znumsorted(1):znumsorted(5))==5 && length(unique(znumsorted))==5 || length(znumsorted(1):znumsorted(4))==4 && znumsorted(4)==5 && znumsorted(5)==14 && length(unique(znumsorted))==5
        
        if zranking==6
            zranking=9;
        else
            zranking=5;
        end
        
    end


vpairs=unique(vnum);
vpairranking=length(unique(vnum));
vdata=hist(vnum,50);
if vranking==0
switch vpairranking
    case 2
        if length(find(vdata==3))==1
       vranking=7;
        end
        if length(find(vdata==4))==1
       vranking=8;
        end
    case 3
        if length(find(vdata==3))==1
            vranking=4;
        end
        if length(find(vdata==3))==0
            vranking=3;
        end
    case 4
        vranking=2;
    case 5
        vranking=1;
end
end


wpairs=unique(wnum);
wpairranking=length(unique(wnum));
wdata=hist(wnum,13);
if wranking==0
switch wpairranking
    case 2
        if length(find(wdata==3))==1
       wranking=7;
        end
        if length(find(wdata==4))==1
       wranking=8;
        end
    case 3
        if length(find(wdata==3))==1
            wranking=4;
        end
        if length(find(wdata==3))==0
            wranking=3;
        end
    case 4
        wranking=2;
    case 5
        wranking=1;
end
end

xpairs=unique(xnum);
xpairranking=length(unique(xnum));
xdata=hist(xnum,13);
if xranking==0
switch xpairranking
    case 2
        if length(find(xdata==3))==1
       xranking=7;
        end
        if length(find(xdata==4))==1
       xranking=8;
        end
    case 3
        if length(find(xdata==3))==1
            xranking=4;
        end
        if length(find(xdata==3))==0
            xranking=3;
        end
    case 4
        xranking=2;
    case 5
        xranking=1;
end
end

ypairs=unique(ynum);
ypairranking=length(unique(ynum));
ydata=hist(ynum,13);
if yranking==0
switch ypairranking
    case 2
        if length(find(ydata==3))==1
       yranking=7;
        end
        if length(find(ydata==4))==1
       yranking=8;
        end
    case 3
        if length(find(ydata==3))==1
            yranking=4;
        end
        if length(find(ydata==3))==0
            yranking=3;
        end
    case 4
        yranking=2;
    case 5
        yranking=1;
end
end

zpairs=unique(znum);
zpairranking=length(unique(znum));
zdata=hist(znum,13);
if zranking==0
switch zpairranking
    case 2
        if length(find(zdata==3))==1
       zranking=7;
        end
        if length(find(zdata==4))==1
       zranking=8;
        end
    case 3
        if length(find(zdata==3))==1
            zranking=4;
        end
        if length(find(zdata==3))==0
            zranking=3;
        end
    case 4
        zranking=2;
    case 5
        zranking=1;
end
end
othersray=[wranking xranking yranking zranking];
othersnum=[wnum; xnum; ynum; znum];

whotied=find(vranking==othersray);
if any(vranking==othersray)
othersnum=othersnum(whotied,:);
othersnumt=transpose(othersnum);
othersnumsorted=sort(othersnum,2);
othersnumex=othersnum(1,:);

end
didyouwin(1,q)=1;
if all(vranking>othersray)
    didyouwin(1,q)=2;
    analysiss(1,vranking)=analysiss(1,vranking)+1;
end
if vranking<max(othersray)
    didyouwin(1,q)=0;
    analysiss(2,max(othersray))=analysiss(2,max(othersray))+1;
end

if didyouwin(1,q)==1
    switch vranking
         case 7
            didyouwin(1,q)=0;
            analysiss(2,7)=analysiss(2,7)+1;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(1,q)=2;
                 analysiss(1,vranking)=analysiss(1,vranking)+1;
                 analysiss(2,7)=analysiss(2,7)-1;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                
                if mode(vnum(vnum~=mode(vnum)))>=max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(1,q)=2;
                analysiss(1,vranking)=analysiss(1,vranking)+1;
                  analysiss(2,7)=analysiss(2,7)-1;
                end
                 
                  
            end
            
        case 6
                 didyouwin(1,q)=0;
                 analysiss(2,6)=analysiss(2,6)+1; 
           for a=1:5
              if vnumsorted(6-a)>max(othersnumsorted(:,6-a))
                   didyouwin(1,q)=2;
                   analysiss(1,vranking)=analysiss(1,vranking)+1;
                   analysiss(2,6)=analysiss(2,6)-1; 
                   break
              end
                 
              end
             
              
           
           
         case 5
            didyouwin(1,q)=0;
            analysiss(2,5)=analysiss(2,5)+1;
            if all(max(vnum)>=(othersnum))
                didyouwin(1,q)=2;
                analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,5)=analysiss(2,5)-1;
            end
            
        case 4
                didyouwin(1,q)=0;
                analysiss(2,4)=analysiss(2,4)+1;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(1,q)=2;
                analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,4)=analysiss(2,4)-1;
            end
         if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(1,q)=2;
                    analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,4)=analysiss(2,4)-1;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>=max(othersnum)
                        didyouwin(1,q)=2;
                        analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,4)=analysiss(2,4)-1;
                    end
                    
                   
                end
            end
            
        case 3
            didyouwin(1,q)=2;
            analysiss(1,vranking)=analysiss(1,vranking)+1;
           for a=1:length(whotied)
               othersnumvec=othersnum(a,:);
           
      if mode(vnum(vnum~=mode(vnum)))<mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
          didyouwin(1,q)=0;
          analysiss(1,vranking)=analysiss(1,vranking)-1;
                analysiss(2,3)=analysiss(2,3)+1;
          break
      end
      
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
                if mode(vnum)<mode(othersnum)
                    didyouwin(1,q)=0;
                     analysiss(1,vranking)=analysiss(1,vranking)-1;
                analysiss(2,3)=analysiss(2,3)+1;
                    break
                end
            end
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec))) && mode(vnum)==mode(othersnumvec)
            if sum(vnum)<sum(othersnumvec)
                didyouwin(1,q)=0;
                 analysiss(1,vranking)=analysiss(1,vranking)-1;
                analysiss(2,3)=analysiss(2,3)+1;
                break
            end
           
            end
    
            
           end
            
            
        case 2
                  didyouwin(1,q)=0;
                  analysiss(2,max(othersray))=analysiss(2,max(othersray))+1;
            if mode(vnum)>max(max(mode(transpose(othersnum))))
                didyouwin(1,q)=2;
                analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,2)=analysiss(2,2)-1;
            end
            if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(1,q)=2;
                     analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,2)=analysiss(2,2)-1;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    vnum(vnum==mode(vnum))=[0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(1,q)=2;
                                            analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,2)=analysiss(2,2)-1;
                    end
                    if max(vnum)==max(othersnum)
                        vnum(vnum==max(vnum))=[];
                        othersnum(othersnum==max(othersnum))=[];
                        if max(vnum)>=max(othersnum)
                        didyouwin(1,q)=2;
                analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,2)=analysiss(2,2)-1;
                        end
                       
                    end
                     
                end
            end
        case 1
            didyouwin(1,q)=0;
            analysiss(2,1)=analysiss(2,1)+1;
            if all(max(vnum(1:2))>=max(transpose(othersnum(:,1:2))))
                didyouwin(1,q)=2;
                 analysiss(1,vranking)=analysiss(1,vranking)+1;
                analysiss(2,1)=analysiss(2,1)-1;
            end
            end
end

wcards=[wcards fourthstreet];
vcards=[vcards fourthstreet];
xcards=[xcards fourthstreet];
ycards=[ycards fourthstreet];
zcards=[zcards fourthstreet];


vnum=ceil(vcards./4)+1;
wnum=ceil(wcards./4)+1;
xnum=ceil(xcards./4)+1;
ynum=ceil(ycards./4)+1;
znum=ceil(zcards./4)+1;
vnumsorted=sort(vnum);
wnumsorted=sort(wnum);
xnumsorted=sort(xnum);
ynumsorted=sort(ynum);
znumsorted=sort(znum);
uvnumsorted=unique(sort(vnum));
uwnumsorted=unique(sort(wnum));
uxnumsorted=unique(sort(xnum));
uynumsorted=unique(sort(ynum));
uznumsorted=unique(sort(znum));
vfsorted=[0 0 0 0 0];
wfsorted=[0 0 0 0 0];
xfsorted=[0 0 0 0 0];
yfsorted=[0 0 0 0 0];
zfsorted=[0 0 0 0 0];
wtop=0;
xtop=0;
ytop=0;
ztop=0;

if any(hist(rem(wcards,4),50)>=5)
    
    wfsorted=wnumsorted(rem(wcards,4)==mode(rem(wcards,4)));
    if length(wfsorted)==6
    wfsorted(1)=[];    
    end
  
    wranking=6;
end
if any(hist(rem(vcards,4),50)>=5)
     vfsorted=vnumsorted(rem(vcards,4)==mode(rem(vcards,4)));
     if length(vfsorted)==6
    vfsorted(1)=[];
    end
    
    vranking=6;
end
if any(hist(rem(xcards,4),50)>=5)
     xfsorted=xnumsorted(rem(xcards,4)==mode(rem(xcards,4)));
     if length(xfsorted)==6
    xfsorted(1)=[];
    end
   
    xranking=6;
end
if any(hist(rem(ycards,4),50)>=5)
     yfsorted=ynumsorted(rem(ycards,4)==mode(rem(ycards,4)));
     if length(yfsorted)==6
    yfsorted(1)=[];
    end
     
    yranking=6;
end
if any(hist(rem(zcards,4),50)>=5)
     zfsorted=znumsorted(rem(zcards,4)==mode(rem(zcards,4)));
     if length(zfsorted)==6
    zfsorted(1)=[];
    end
  
    zranking=6;
end

    switch length(uwnumsorted)
        case 6
            if length(wnumsorted(1):wnumsorted(5))==5 || length(wnumsorted(2):wnumsorted(6))==5 || wnumsorted(4)==5 && wnumsorted(6)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
            end
        case 5
              if length(uwnumsorted(1):uwnumsorted(5))==5 || uwnumsorted(4)==5 && uwnumsorted(5)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
              end
        
            
    end
      switch length(uvnumsorted)
        case 6
            if length(vnumsorted(1):vnumsorted(5))==5 || length(vnumsorted(2):vnumsorted(6))==5 || vnumsorted(4)==5 && vnumsorted(6)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
        case 5
              if length(uvnumsorted(1):uvnumsorted(5))==5 || uvnumsorted(4)==5 && uvnumsorted(5)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
            end

     switch length(uxnumsorted)
        case 6
            if length(xnumsorted(1):xnumsorted(5))==5 || length(xnumsorted(2):xnumsorted(6))==5 || xnumsorted(4)==5 && xnumsorted(6)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
        case 5
              if length(uxnumsorted(1):uxnumsorted(5))==5 || uxnumsorted(4)==5 && uxnumsorted(5)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
            end
    switch length(uynumsorted)
        case 6
            if length(ynumsorted(1):ynumsorted(5))==5 || length(ynumsorted(2):ynumsorted(6))==5 || ynumsorted(4)==5 && ynumsorted(6)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
        case 5
              if length(uynumsorted(1):uynumsorted(5))==5 || uynumsorted(4)==5 && uynumsorted(5)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
            end
        
    
     switch length(uznumsorted)
        case 6
            if length(znumsorted(1):znumsorted(5))==5 || length(znumsorted(2):znumsorted(6))==5 || znumsorted(4)==5 && znumsorted(6)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
        case 5
              if length(uznumsorted(1):uznumsorted(5))==5 || uznumsorted(4)==5 && uznumsorted(5)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
            end



vpairranking=length(unique(vnum));
vdata=hist(vnum,50);
if vranking~=5 && vranking~=6 && vranking~=9
switch vpairranking
    case 3
        if length(find(vdata==3))==1
       vranking=7;
        end
        if length(find(vdata==4))==1
       vranking=8;
        end
    case 4
        if length(find(vdata==3))==1
            vranking=4;
        end
        if length(find(vdata==3))==0
            vranking=3;
        end
    case 5
        vranking=2;
    case 6
        vranking=1;
end
end



wpairranking=length(unique(wnum));
wdata=hist(wnum,13);
if wranking~=5 && wranking~=6 && wranking~=9
switch wpairranking
    case 3
        if length(find(wdata==3))==1
       wranking=7;
        end
        if length(find(wdata==4))==1
       wranking=8;
        end
    case 4
        if length(find(wdata==3))==1
            wranking=4;
        end
        if length(find(wdata==3))==0
            wranking=3;
        end
    case 5
        wranking=2;
    case 6
        wranking=1;
end
end


xpairranking=length(unique(xnum));
xdata=hist(xnum,13);
if xranking~=5 && xranking~=6 && xranking~=9
switch xpairranking
    case 3
        if length(find(xdata==3))==1
       xranking=7;
        end
        if length(find(xdata==4))==1
       xranking=8;
        end
    case 4
        if length(find(xdata==3))==1
            xranking=4;
        end
        if length(find(xdata==3))==0
            xranking=3;
        end
    case 5
        xranking=2;
    case 6
        xranking=1;
end
end


ypairranking=length(unique(ynum));
ydata=hist(ynum,13);
if yranking~=5 && yranking~=6 && yranking~=9
switch ypairranking
    case 3
        if length(find(ydata==3))==1
       yranking=7;
        end
        if length(find(ydata==4))==1
       yranking=8;
        end
    case 4
        if length(find(ydata==3))==1
            yranking=4;
        end
        if length(find(ydata==3))==0
            yranking=3;
        end
    case 5
        yranking=2;
    case 6
        yranking=1;
end
end


zpairranking=length(unique(znum));
zdata=hist(znum,13);
if zranking~=5 && wranking~=6 && wranking~=9
switch zpairranking
    case 3
        if length(find(zdata==3))==1
       zranking=7;
        end
        if length(find(zdata==4))==1
       zranking=8;
        end
    case 4
        if length(find(zdata==3))==1
            zranking=4;
        end
        if length(find(zdata==3))==0
            zranking=3;
        end
    case 5
        zranking=2;
    case 6
        zranking=1;
end
end
othersray=[wranking xranking yranking zranking];
othersnum=[wnum; xnum; ynum; znum];
whotied=find(vranking==othersray);
if any(vranking==othersray)
othersnum=othersnum(whotied,:);
othersnumt=transpose(othersnum);
othersnumfsorted=[wfsorted;xfsorted;yfsorted;zfsorted];
othersnumsorted=sort(othersnum,2);
othersnumex=othersnum(1,:);

end
didyouwin(2,q)=1;
if all(vranking>othersray)
    didyouwin(2,q)=2;
     analysiss(3,vranking)=analysiss(3,vranking)+1;
end
if vranking<max(othersray)
    didyouwin(2,q)=0;
    analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
end
if didyouwin(2,q)==1
    switch vranking
        case 9
            didyouwin(2,q)=0;
            analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
          if all(vtop>=[wtop xtop ytop ztop])
              didyouwin(2,q)=2;
               analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
          end
          
        case 8
            didyouwin(2,q)=0;
            analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
            if all(mode(vnum)>mode(transpose(othersnum)))
                didyouwin(2,q)=2;
                 analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                if vnum(vnum~=mode(vnum))>=max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(2,q)=2;
                 analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                end
                
            end
        case 7
            didyouwin(2,q)=0;
            analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(2,q)=2;
                 analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                
                if mode(vnum(vnum~=mode(vnum)))>=max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(2,q)=2;
                 analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                end
 
            end
        case 6
                    didyouwin(2,q)=0;
                    analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
           for a=1:5
              if vfsorted(6-a)>max(othersnumfsorted(:,6-a))
                   didyouwin(2,q)=2;
                    analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                   break
              end
              
           end
           
           
         case 5
            didyouwin(2,q)=0;
            analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
          if all(vtop>=[wtop xtop ytop ztop])
              didyouwin(2,q)=2;
                analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
          end
          
        case 4
            didyouwin(2,q)=0;
            analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(2,q)=2;
                  analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
            end
         if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(2,q)=2;
                      analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>=max(othersnum)
                        didyouwin(2,q)=2;
                          analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                    end
                end
            end
        case 3
            didyouwin(2,q)=2;
            analysiss(3,vranking)=analysiss(3,vranking)+1;
           for a=1:length(whotied)
               othersnumvec=othersnum(a,:);
           
      if mode(vnum(vnum~=mode(vnum)))<mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
          didyouwin(2,q)=0;
           analysiss(3,vranking)=analysiss(3,vranking)-1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
          break
      end
      
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
                if mode(vnum)<mode(othersnumvec)
                    didyouwin(2,q)=0;
                     analysiss(3,vranking)=analysiss(3,vranking)-1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
                    break
                end
            end
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec))) && mode(vnum)==mode(othersnumvec)
         vnum(vnum==mode(vnum))=[];
        vnum(vnum==mode(vnum))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        if max(vnum)<max(othersnumvec)
            didyouwin(2,q)=0;
             analysiss(3,vranking)=analysiss(3,vranking)-1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
            break
        end
         
            end
    
            
           end
            
            
        case 2
              didyouwin(2,q)=0;
              analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
            if mode(vnum)>max(max(mode(transpose(othersnum))))
                didyouwin(2,q)=2;
                 analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
            end
            if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(2,q)=2;
                     analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(2,q)=2;
                         analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                    end
                    if max(vnum)==max(othersnum)
                        vnum(vnum==max(vnum))=[];
                        othersnum(othersnum==max(othersnum))=[];
                        if max(vnum)>=max(othersnum)
                        didyouwin(2,q)=2;
                         analysiss(3,vranking)=analysiss(3,vranking)+1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))-1;
                        end
                         
                    end
                     
                end
            end
        case 1
            didyouwin(2,q)=2;
             analysiss(3,vranking)=analysiss(3,vranking)+1;
            
            for k=1:6
            if all(vnumsorted(7-k)<othersnumsorted(:,7-k))
                didyouwin(2,q)=0;
                 analysiss(3,vranking)=analysiss(3,vranking)-1;
               analysiss(4,max(othersray))=analysiss(4,max(othersray))+1;
               break
            end
            end
            end
end
wcards=[wcards fifthstreet];
vcards=[vcards fifthstreet];
xcards=[xcards fifthstreet];
ycards=[ycards fifthstreet];
zcards=[zcards fifthstreet];


vnum=ceil(vcards./4)+1;
wnum=ceil(wcards./4)+1;
xnum=ceil(xcards./4)+1;
ynum=ceil(ycards./4)+1;
znum=ceil(zcards./4)+1;
vnumsorted=sort(vnum);
wnumsorted=sort(wnum);
xnumsorted=sort(xnum);
ynumsorted=sort(ynum);
znumsorted=sort(znum);
uvnumsorted=unique(sort(vnum));
uwnumsorted=unique(sort(wnum));
uxnumsorted=unique(sort(xnum));
uynumsorted=unique(sort(ynum));
uznumsorted=unique(sort(znum));
vhist=hist(vnumsorted,14);
wtop=0;
xtop=0;
ytop=0;
ztop=0;
wfsorted=zeros(1,5);
vfsorted=zeros(1,5);
xfsorted=zeros(1,5);
yfsorted=zeros(1,5);
zfsorted=zeros(1,5);
if any(hist(rem(wcards,4),50)>=5)
    wfsorted=wnumsorted(rem(wcards,4)==mode(rem(wcards,4)));
    if length(wfsorted)==6
    wfsorted(1)=[];
    end
    if length(wfsorted)==7
    wfsorted([1 2])=[];
    end
 
    wranking=6;
end
if any(hist(rem(vcards,4),50)>=5)
     vfsorted=vnumsorted(rem(vcards,4)==mode(rem(vcards,4)));
     if length(vfsorted)==6
    vfsorted(1)=[];
     end
     if length(vfsorted)==7
    vfsorted([1 2])=[];
     end
   
    vranking=6;
end
if any(hist(rem(xcards,4),50)>=5)
     xfsorted=xnumsorted(rem(xcards,4)==mode(rem(xcards,4)));
     if length(xfsorted)==6
    xfsorted(1)=[];
     end
     if length(xfsorted)==7
    xfsorted([1 2])=[];
     end
    
    xranking=6;
end
if any(hist(rem(ycards,4),50)>=5)
     yfsorted=ynumsorted(rem(ycards,4)==mode(rem(ycards,4)));
     if length(yfsorted)==6
    yfsorted(1)=[];
     end
     if length(yfsorted)==7
    yfsorted([1 2])=[];
     end
    
    yranking=6;
end
if any(hist(rem(zcards,4),50)>=5)
     zfsorted=znumsorted(rem(zcards,4)==mode(rem(zcards,4)));
     if length(zfsorted)==6
    zfsorted(1)=[];
     end
     if length(zfsorted)==7
    zfsorted([1 2])=[];
     end
    
    zranking=6;
end

    switch length(uwnumsorted)
        case 7
            if length(wnumsorted(1):wnumsorted(5))==5 || length(wnumsorted(2):wnumsorted(6))==5 || length(wnumsorted(3):wnumsorted(7))==5 || wnumsorted(4)==5 && wnumsorted(7)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
            end
        case 6
              if length(uwnumsorted(1):uwnumsorted(5))==5 || length(uwnumsorted(2):uwnumsorted(6))==5 || uwnumsorted(4)==5 && uwnumsorted(6)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
              end
                 case 5
              if length(uwnumsorted(1):uwnumsorted(5))==5 || uwnumsorted(4)==5 && uwnumsorted(5)==14
        wtop=wnumsorted(5);
        if wnumsorted(6)-1==wnumsorted(5)
            wtop=wnumsorted(6);
        end
      
        if wranking==6 
            if wtop-4:wtop==wfsorted
            wranking=9;
            wtop=wtop*20;
            end
        else
            wranking=5;
        end
            end
 end
      switch length(uvnumsorted)
        case 7
            if length(vnumsorted(1):vnumsorted(5))==5 || length(vnumsorted(2):vnumsorted(6))==5 || length(vnumsorted(3):vnumsorted(7))==5 || vnumsorted(4)==5 && vnumsorted(7)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
        case 6
              if length(uvnumsorted(1):uvnumsorted(5))==5 || length(uvnumsorted(2):uvnumsorted(6))==5 || uvnumsorted(4)==5 && uvnumsorted(6)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
              end
                 case 5
              if length(uvnumsorted(1):uvnumsorted(5))==5 || uvnumsorted(4)==5 && uvnumsorted(5)==14
        vtop=vnumsorted(5);
        if vnumsorted(6)-1==vnumsorted(5)
            vtop=vnumsorted(6);
        end
      
        if vranking==6 
            if vtop-4:vtop==vfsorted
            vranking=9;
            vtop=vtop*20;
            end
        else
            vranking=5;
        end
            end
            end

    switch length(uxnumsorted)
        case 7
            if length(xnumsorted(1):xnumsorted(5))==5 || length(xnumsorted(2):xnumsorted(6))==5 || length(xnumsorted(3):xnumsorted(7))==5 || xnumsorted(4)==5 && xnumsorted(7)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
        case 6
              if length(uxnumsorted(1):uxnumsorted(5))==5 || length(uxnumsorted(2):uxnumsorted(6))==5 || uxnumsorted(4)==5 && uxnumsorted(6)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
              end
                 case 5
              if length(uxnumsorted(1):uxnumsorted(5))==5 || uxnumsorted(4)==5 && uxnumsorted(5)==14
        xtop=xnumsorted(5);
        if xnumsorted(6)-1==xnumsorted(5)
            xtop=xnumsorted(6);
        end
      
        if xranking==6 
            if xtop-4:xtop==xfsorted
            xranking=9;
            xtop=xtop*20;
            end
        else
            xranking=5;
        end
            end
 end

   switch length(uynumsorted)
        case 7
            if length(ynumsorted(1):ynumsorted(5))==5 || length(ynumsorted(2):ynumsorted(6))==5 || length(ynumsorted(3):ynumsorted(7))==5 || ynumsorted(4)==5 && ynumsorted(7)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
        case 6
              if length(uynumsorted(1):uynumsorted(5))==5 || length(uynumsorted(2):uynumsorted(6))==5 || uynumsorted(4)==5 && uynumsorted(6)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
              end
                 case 5
              if length(uynumsorted(1):uynumsorted(5))==5 || uynumsorted(4)==5 && uynumsorted(5)==14
        ytop=ynumsorted(5);
        if ynumsorted(6)-1==ynumsorted(5)
            ytop=ynumsorted(6);
        end
      
        if yranking==6 
            if ytop-4:ytop==yfsorted
            yranking=9;
            ytop=ytop*20;
            end
        else
            yranking=5;
        end
            end
 end

     switch length(uznumsorted)
        case 7
            if length(znumsorted(1):znumsorted(5))==5 || length(znumsorted(2):znumsorted(6))==5 || length(znumsorted(3):znumsorted(7))==5 || znumsorted(4)==5 && znumsorted(7)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
        case 6
              if length(uznumsorted(1):uznumsorted(5))==5 || length(uznumsorted(2):uznumsorted(6))==5 || uznumsorted(4)==5 && uznumsorted(6)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
              end
                 case 5
              if length(uznumsorted(1):uznumsorted(5))==5 || uznumsorted(4)==5 && uznumsorted(5)==14
        ztop=znumsorted(5);
        if znumsorted(6)-1==znumsorted(5)
            ztop=znumsorted(6);
        end
      
        if zranking==6 
            if ztop-4:ztop==zfsorted
            zranking=9;
            ztop=ztop*20;
            end
        else
            zranking=5;
        end
            end
 end


vpairranking=length(unique(vnum));
vdata=hist(vnum,50);
if vranking~=5 && vranking~=6 && vranking~=9
switch vpairranking
    case 4
        if length(find(vdata==3))==1
       vranking=7;
        end
        if length(find(vdata==4))==1
       vranking=8;
        end
    case 5
        if length(find(vdata==3))==1
            vranking=4;
        end
        if length(find(vdata==3))==0
            vranking=3;
        end
    case 6
        vranking=2;
    case 7
        vranking=1;
end
end



wpairranking=length(unique(wnum));
wdata=hist(wnum,13);
if wranking~=5 && wranking~=6 && wranking~=9
switch wpairranking
    case 4
        if length(find(wdata==3))==1
       wranking=7;
        end
        if length(find(wdata==4))==1
       wranking=8;
        end
    case 5
        if length(find(wdata==3))==1
            wranking=4;
        end
        if length(find(wdata==3))==0
            wranking=3;
        end
    case 6
        wranking=2;
    case 7
        wranking=1;
end
end


xpairranking=length(unique(xnum));
xdata=hist(xnum,13);
if xranking~=5 && xranking~=6 && xranking~=9
switch xpairranking
    case 4
        if length(find(xdata==3))==1
       xranking=7;
        end
        if length(find(xdata==4))==1
       xranking=8;
        end
    case 5
        if length(find(xdata==3))==1
            xranking=4;
        end
        if length(find(xdata==3))==0
            xranking=3;
        end
    case 6
        xranking=2;
    case 7
        xranking=1;
end
end


ypairranking=length(unique(ynum));
ydata=hist(ynum,13);
if yranking~=5 && yranking~=6 && yranking~=9
switch ypairranking
    case 4
        if length(find(ydata==3))==1
       yranking=7;
        end
        if length(find(ydata==4))==1
       yranking=8;
        end
    case 5
        if length(find(ydata==3))==1
            yranking=4;
        end
        if length(find(ydata==3))==0
            yranking=3;
        end
    case 6
        yranking=2;
    case 7
        yranking=1;
end
end


zpairranking=length(unique(znum));
zdata=hist(znum,13);
if zranking~=5 && wranking~=6 && wranking~=9
switch zpairranking
    case 4
        if length(find(zdata==3))==1
       zranking=7;
        end
        if length(find(zdata==4))==1
       zranking=8;
        end
    case 5
        if length(find(zdata==3))==1
            zranking=4;
        end
        if length(find(zdata==3))==0
            zranking=3;
        end
    case 6
        zranking=2;
    case 7
        zranking=1;
end
end
othersray=[wranking xranking yranking zranking];
othersnum=[wnum; xnum; ynum; znum];
whotied=find(vranking==othersray);
if any(vranking==othersray)
othersnum=othersnum(whotied,:);
othersnumt=transpose(othersnum);
othersnumf=[wfsorted;xfsorted;yfsorted;zfsorted];
othersnumsorted=sort(othersnum,2);
othersnumfsorted=sort(othersnum,2);
othersnumex=othersnum(1,:);

end
didyouwin(3,q)=1;
if all(vranking>othersray)
    didyouwin(3,q)=2;
     analysiss(5,vranking)=analysiss(5,vranking)+1;
               
end
if vranking<max(othersray)
    didyouwin(3,q)=0;
    analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
end
if didyouwin(3,q)==1
    switch vranking
        case 9
              didyouwin(3,q)=0;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
          if all(vtop>=[wtop xtop ytop ztop])
              didyouwin(3,q)=2;
              analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
          end
          
        case 8
            didyouwin(3,q)=0;
            analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
            if all(mode(vnum)>mode(transpose(othersnum)))
                didyouwin(3,q)=2;
                 analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                if vnum(vnum~=mode(vnum))>=max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(3,q)=2;
                 analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                end
                
            end
        case 7
            didyouwin(3,q)=0;
            analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(3,q)=2;
                 analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
            end
            if mode(vnum)==max(mode(transpose(othersnum)))
                
                if mode(vnum(vnum~=mode(vnum)))>=max(othersnum(othersnum~=mode(othersnumex)))
                didyouwin(3,q)=2;
                 analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                end
                 
            end
        case 6
                    didyouwin(3,q)=0;
                    analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
           for a=1:5
              if vfsorted(6-a)>max(othersnumfsorted(:,6-a))
                   didyouwin(3,q)=2;
                    analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                   break
              end
              
           end
           
           
         case 5
            didyouwin(3,q)=0;
            analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
          if all(vtop>=[wtop xtop ytop ztop])
              didyouwin(3,q)=2;
               analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
          end
          
        case 4
            didyouwin(3,q)=0;
            analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
            if mode(vnum)>max(mode(transpose(othersnum)))
                didyouwin(3,q)=2;
                 analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
            end
         if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(3,q)=2;
                     analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>=max(othersnum)
                        didyouwin(3,q)=2;
                         analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                    end
                   
                   
                end
            end
        case 3
    didyouwin(3,q)=2;
    analysiss(5,vranking)=analysiss(5,vranking)+1;
           for a=1:length(whotied)
               othersnumvec=othersnum(a,:);
           
      if mode(vnum(vnum~=mode(vnum)))<mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
          didyouwin(3,q)=0;
          analysiss(5,vranking)=analysiss(5,vranking)-1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
          break
      end
      
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec)))
                if mode(vnum)<mode(othersnumvec)
                    didyouwin(3,q)=0;
                    analysiss(5,vranking)=analysiss(5,vranking)-1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
                    break
                end
            end
            if mode(vnum(vnum~=mode(vnum)))==mode(othersnumvec(othersnumvec~=mode(othersnumvec))) && mode(vnum)==mode(othersnumvec)
        vnum(vnum==mode(vnum))=[];
        vnum(vnum==mode(vnum))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        othersnumvec(othersnumvec==mode(othersnumvec))=[];
        if max(vnum)<=max(othersnumvec)
            didyouwin(3,q)=0;
            analysiss(5,vranking)=analysiss(5,vranking)-1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
            break
        end
         
            end
    
            
           end
            
            
            
        case 2
              didyouwin(3,q)=0;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
            if mode(vnum)>max(max(mode(transpose(othersnum))))
                didyouwin(3,q)=2;
                analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
            end
            if mode(vnum)==max(max(mode(transpose(othersnum))))
                if max(vnum(vnum~=mode(vnum)))>max(othersnum(othersnum~=mode(othersnumex)))
                    didyouwin(3,q)=2;
                    analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                end
                if max(vnum(vnum~=mode(vnum)))==max(othersnum(othersnum~=mode(othersnumex)))
                    
                    vnum(vnum==mode(vnum))=[0 0];
                    vnum(vnum==max(vnum))=[];
                    othersnum=othersnum(othersnum~=mode(othersnumex));
                    othersnum(othersnum==max(othersnum))=[];
                    if max(vnum)>max(othersnum)
                        didyouwin(3,q)=2;
                        analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                    end
                    if max(vnum)==max(othersnum)
                        vnum(vnum==max(vnum))=[];
                        othersnum(othersnum==max(othersnum))=[];
                        if max(vnum)>=max(othersnum)
                        didyouwin(3,q)=2;
                        analysiss(5,vranking)=analysiss(5,vranking)+1;
              analysiss(6,max(othersray))=analysiss(6,max(othersray))-1;
                        end
                         
                    end
                     
                end
            end
        case 1
            didyouwin(2,q)=2;
             analysiss(5,vranking)=analysiss(5,vranking)+1;
            
            for k=1:6
            if all(vnumsorted(7-k)<othersnumsorted(:,7-k))
                didyouwin(2,q)=0;
                 analysiss(5,vranking)=analysiss(5,vranking)-1;
               analysiss(6,max(othersray))=analysiss(6,max(othersray))+1;
               break
            end
            end
            
            end
end

end

winpercent=[0 0 0];
winortiepercent=[0 0 0];
for s=1:3
wins=length(find(didyouwin(s,:)==2));
ties=length(find(didyouwin(s,:)==1));
winpercent(s)=wins/1000;
winortiepercent(s)=(wins+ties)/1000;
end
winpercent=winpercent*100;
winortiepercent=winortiepercent*100;
odds=(100-winortiepercent)./winortiepercent
bar(analysiss,'stacked')