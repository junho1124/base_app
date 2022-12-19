# base_app

HaGun 앱 개발 BaseApp

## architecture

[참조] https://velog.io/@gkssk925/Flutter-Clean-Architecture-DI-%EC%83%98%ED%94%8C%EC%95%B1-%EA%B0%9C%EB%B0%9C-%ED%9B%84%EA%B8%B0

## 앱 실행 전

### 현재 retrofit_generator, json_serializable, freezed, hive_generator Package 가 코드 제너레이터에 의존 중
### 실행 코드
- flutter pub run build_runner build                              => 코드 제너레이팅
- flutter pub run build_runner build --watch                      => 코드 수정 사항 바로 반영 
- flutter pub run build_runner build --delete-conflicting-outputs => 기존 소스코드로 인한 오류로 빌드가 안될 시 

