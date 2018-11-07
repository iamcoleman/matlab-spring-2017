function [wd,iq] = insert_qu(wq) 

sf1 = @(cellstr,pat) find(~cellfun('isempty',strfind(cellstr,pat))) ;

wd = wq ; 
iq = sf1(wd,'q') ; % all words that contain the letter Q.
i2 = cell2mat(strfind(wd,'q')) ; % index of Q in each word.
for i = 1:length(iq)
    if i2(i) == length(wd{iq(i)}) % if Q shows up at the end (unlikely)
        wd{iq(i)} = [wd{iq(i)}(1:i2(i)) 'u'] ; % add 'u' at the end
    else  % if Q shows up in the middle... 
        wd{iq(i)} = [wd{iq(i)}(1:i2(i)) 'u' wd{iq(i)}(i2(i)+1:end)] ;
    end
end

