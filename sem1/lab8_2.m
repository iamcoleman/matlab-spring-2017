clear; clc; close all; home
commandwindow
message = Message_Interceptor();
keywords = {'Batman','Superman','Spiderman','Thor', 'Storm','Wolverine','Ironman','Beast','Hulk','Deadpool'};
n = 1
while n <= length(keywords)
    text_mes = message;
    keyword = keywords{index};
    keyword = upper(keyword);
    en_key = double(keyword)-65;
    num_mes = double(text_mes);
    coder = zeros(size(text_mes));
    en_mes = zeros(size(text_mes));
    nen_key = 1;
    for k = 1:length(coder)
        if nen_key > length(en_key)
            nen_key = 1;
        end
        coder(k) = en_key(nen_key);
        nen_key=nen_key+1;
    end
    en_mes=num_mes;
    for k = 1:length(coder)
        if num_mes(k) >= 65 && num_mes(k) <= 90
            en_mes(k) = num_mes(k) - coder(k);
            if en_mes(k) < 65
                en_mes(k) = en_mes(k) + 26;
            end
        end
        if num_mes(k) >= 97 && num_mes(k) <= 122
            en_mes(k) = num_mes(k) - coder(k);
            if en_mes(k) < 97
                en_mes(k) = en_mes(k) + 26;
            end
        end
    end
    fin_mes = char(en_mes);
    fprintf('\n\nThe encrypted message is: %s',fin_mes)
    n = n+1
end










