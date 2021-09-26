# Grby

# 깃허브 사용법 

#
#
#

# 브랜치 생성.

1. git branch 'name' 으로 작업용 브랜치 생성.

2. git checkout 'name' 으로 작업 브랜치로 이동

3. git add . 

4. git commit -m 'msg'

5. git push origin 'name' 으로 'name' 원격지에도 브랜치 생성.

** 브랜치 연동 - 5.까지 진행하여 생성된 branch는 각자가 local 및 저장소 기준이므로, local의 branch를 retmoe branch와 연동하는 작업을 수행하는 것이 좋습니다.
git branch --set-upstream-to origin/'name'



# PR 작업 후. 

1. merge 작업 후 리모트에서 브랜치를 삭제한경우
    1-1. git remote prune 명령어로 리모트 브랜치 새로고침.
    1-2. git checkout 'name2' 명령어로 다른 브랜치로 잠시 이동.
    1-3. git branch -D 'name' 명령어로 PR 작업한 브랜치 삭제.


2. merge 작업 후 리모트에서 브랜치 삭제 안하고 로컬에서 진행 할경우.
    2-1.  
