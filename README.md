# small-codes
자잘한 생활의 코드들 
- [compile.sh](#compilesh)
- [lets-select.py](#lets-selectpy)
- [pdf2jpeg.ipynb](#pdf2jpegipynb)

* * *
### pdf2jpeg.ipynb
###### When?
March 2020 <br/>
###### Background
보험금 청구서류를 pdf로 준비했는데 온라인 첨부를 하려고 보니 이미지 형식 파일만 첨부가 된단다. Acrobat Reader 유료버전은 없고, 온라인으로 해결하자니 개인정보가 담긴 서류라 왠지 찝찝하다. 파이썬을 사용해서 pdf를 이미지 파일(JPEG)로 변환하자.
###### What & How
- 변환해야 하는 pdf 문서가 여러 개 있고, 각각의 문서는 여러 페이지로 구성되어있다. <br>
```문서이름.pdf```를 ```문서이름1.jpg```, ```문서이름2.jpg``` , ... 로 변환한다.
- 변환해야 하는 pdf는 모두 같은 폴더 안에 들어 있었고, pdf2jpeg.ipynb도 같은 폴더(dir_pth 변수 내용을 수정해도 된다)에 둔다.
- https://pypi.org/project/pdf2image/ 를 사용한다. 해당 패키지는 [PIL(Python Imaging Library)](https://pillow.readthedocs.io/en/stable/reference/Image.html)을 사용한다. 

* * *
### compile.sh
###### When?
December 2018 <br/>
###### Background
C프로그래밍 시험을 마치고 채점을 해야 한다. 짧은 shell script를 통해 한번에 여러개의 파일을 컴파일 해보자. 이 때 실행파일 이름은 ```.out``` 확장자를 사용하자.<br/>
###### What & How
- 홈 디렉토리에는 ```\*번 문제``` 에 대한 학생 제출 코드가 담긴 ```p1```,```p2```,```p3```,```p4```  네 개의 디렉토리와 ```compile.sh```가 있다. 
- 실행파일 이름을 정하느라 [working with filenames in bash](http://mindspill.net/computing/linux-notes/working-with-filenames-in-bash/)를 참고하였다.
- 컴파일 명령어로 ```gcc -o (생성될 실행파일) (학생 제출 코드)```를 사용하였다.

* * *
### lets-select.py
###### When?
July 2018 <br/>
###### Background
졸업스냅을 찍은 우리들은 ```select```라는 이름의 디렉토리에 사진을 남기기로 했다. 그러나 NEF형식의 파일을 미리보기 하는데 한계가 있어 jpg형식으로 변환한 후, ```_group```이라는 이름의 디렉토리에 사진을 추렸다! 추린 사진들의 번호를 일일이 확인하기 귀찮으므로 ```_group```에 없는 번호의 사진들을 지워버리자.<br/>
###### What & How
- ```select``` 디렉토리에는 원본 파일 전체가 들어있다. 
- ```_group```이라는 이름의 디렉토리에 있는 사진과 동일한 이름인 사진 파일들만 남겨야 한다
- ```import os``` 를 사용하여 해결하였다.
