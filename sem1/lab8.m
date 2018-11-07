% Coleman Lyski
%
% October 25, 2016
%
% Lab 8
%% Encrypting
clear; clc; close all; home
commandwindow
% text_mes = original text message
% keyword = keyword
% en_key = number value for the keyword
% coder = repeated en_key
% en_mes = encrypted message
% fin_mes = encrypted message back to characters
% nen_key = position in en_key
text_mes = input('Enter the message to encrypt: ','s');
%text_mes = 'Eric Clapton is a guitarist'
keyword = input('Enter keyword: ','s');
%keyword = 'stratocaster'
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
        en_mes(k) = num_mes(k) + coder(k);
        if en_mes(k) > 90
            en_mes(k) = en_mes(k) - 26;
        end
    end
    if num_mes(k) >= 97 && num_mes(k) <= 122
        en_mes(k) = num_mes(k) + coder(k);
        if en_mes(k) > 122
            en_mes(k) = en_mes(k) - 26;
        end
    end
end
fin_mes = char(en_mes);
fprintf('\n\nThe encrypted message is: %s',fin_mes)
%% Decrypting
clear; clc; close all; home
commandwindow
text_mes = input('Enter the message to decrypt: ','s');
keyword = input('Enter keyword: ','s');
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
%% Intercepted Message
clear; clc; close all; home
commandwindow
message = Message_Interceptor();
keywords = {'Batman','Superman','Spiderman','Thor', 'Storm','Wolverine','Ironman','Beast','Hulk','Deadpool'};
n = 1;
Z = 0;
if Z == 0
    while n <= length(keywords)
        text_mes = message;
        keyword = keywords{n};
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
        fprintf('\n\nThe encrypted message for keyword %s is: %s',keyword,fin_mes)
        n = n+1;
    end
    z = input('\n\nWas the message successfully decrypted, yes or no?','s');
elseif Z == 1
    fprintf('Done.')
else
    Z = 0;
end























