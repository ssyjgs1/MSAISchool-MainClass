from sklearn import datasets
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis

iris = datasets.load_iris() # 붓꽃 데이터셋을 불러옴
features = iris.data
target = iris.target

# LDA 객체를 만들고 실행하여 특성을 변환합니다.
lda = LinearDiscriminantAnalysis(n_components=1)
features_lda = lda.fit(features, target)
print("원본 특성 갯수 : ", features.shape[1])
print("줄어든 특성 갯수 : ", features_lda.shape[1])

# 설명된 분산의 비율이 담긴 배열을 저장
lda_var_ratios = lda.explained_variance_ratio_
print(lda_var_ratios)

def select_n_components(var_ratio, goal_var : float) -> int:
    total_variances = 0.0 # 설명된 분산의 초기값을 지정
    n_components = 0 # 특성 갯수의 초기값을 지정

    for explained_variance in var_ratio : # 각 특성이 설명된 분산을 순회하는 Loop
        total_variances += explained_variance # 설명된 분산 값을 누적
        n_components += 1 # 성분 갯수를 셈
        if total_variances >= goal_var : # 설명된 분산이 목표치에 도달하면 반복문을 종료
            break
    return n_components # 성분 갯수를 반환

temp = select_n_components(lda_var_ratios, 0.95)
print("temp = ", temp)