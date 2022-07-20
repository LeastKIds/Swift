import Foundation

public let globalConstant: Int = 100

/// 오류 타입의 열거형 입니다.
/// - noName: 이름을 전달받지 못했을 때 발생하는 오류
/// incorrectAge(age: Int): 나이가 0세 미만, 150세 초과인 경우 잘못된 나이로 인식하여
/// 오류로 처리
/// - unknown: 알 수 없는 오류

public func publicFunction() {
    print("Hello! This is Additional file")
}
