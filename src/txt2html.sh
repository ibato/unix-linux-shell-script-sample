#!/bin/sh

# HTML에서 이스케이프가 필요한 기호를 문자 참조로 치환
# 마지막에 줄 끝을 <br>태그로 치환
#(1)
sed -e 's/&/\&amp;/g' \
-e 's/</\&lt;/g' \
-e 's/>/\&gt;/g' \
-e "s/'/\&#39;/g" \
-e 's/"/\&quot;/g' \
-e 's/$/<br>/' \   #(2)
"$1"