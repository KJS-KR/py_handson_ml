# 질의응답

챕터별 질의응답 모음집입니다.

## 1장

* Q: 과대적합을 해결하기 위한 방법은 모델 규제 방법 밖에 없는 것인지 궁금합니다. 실험데이터를 엄청나게 많이 확보한다면 해결 가능한 지 궁급합니다.
  * A: 과대적합 방지를 위한 여러 방안이 있습니다. 모델 규제은 그 중에 하나이며 모델 규제 자체도 다양한 방식으로 이루어집니다. 앞으로 배워 나갑니다. 훈련 데이터세트가 클 수록 좋은 모델을 훈련시킬 수 있는 것은 일반적으로 그렇지만 꼭 그런 것은 아닙니다. 좋은 모델은 단순히 데이터 만으로 만들어지지 않습니다. 여러분이 1년동안 배워야 하는 내용이 바로 데이터를 어떻게 잘 활용할 것인가입니다. 

* Q: 선형회귀 모델에서는 GDP를 알 때 정확한 삶의 만족도 값을 알 수 없으니 범위로 예측 하는 것도 가능한가요?
  * A: 그럴 수 있죠. 그렇게 하는 건 아주 쉬워요. 그런데 그건 별 도움이 안되요. 이유는 하나의 값을 예측한 다음에 필요에 따라 지정한 오차 범위로 구간을 정하면 되기 때문이며, 또한 구간으로 예측한다 하더라도 성능이 더 좋아질 이유는 전혀 없기 때문입니다. 나중에 배우겠지만, 모델 훈련을 적정한 시기에 멈추게 하는 방법 중에 하나가 그런 오차의 정도가 지정된 기준만큼 작아질 때로 하는 것입니다. 

* Q: 선형회귀 모델은 1인당 GDP와 삶의 만족도 사이의 관계를 모델링 하기에 부적합하다는 결론을 지은 이유가 있을까요?
  * A: GDP가 더 높은데 삶의 만족도는 더 낮은 경우와 그 반대의 경우가 존재하기 때문입니다. 상식적으로 생각하더라도 소득과 삶의 만족도가 선형적으로 비례하지는 않습니다.

* Q: 하이퍼 파라미터가 잘 이해되지 않습니다. 공장을 기계화하여 자동으로 작동하게 하더라도 그 기계를 관리할 사람이 필요한 것처럼 잘 훈련된 모델이라도 오류발생 외에 사람이 직접 입력해야되는 부분 이라고 생각하면 될까요? 적절한 데이터가 있으면 훈련된 모델이 값을 뽑아주는데 과연 직접 건들 부분이 있는건지 잘 모르겠습니다.
  * A: 하이퍼파라미터에 대한 이해를 정확히 했습니다. 모델은 하이퍼파라미터를 지정해야 선언되며, 어떤 하이퍼파라미터가 최적의 모델로 훈련될 수 있는지 아무도 모릅니다. 경우에 따라 달라지고 규칙성이 없기 때문입니다. 이 부분이 머신러닝이 왜 간단하지 않은가에 대한 핵심입니다. 어떤 모델도 거저 만들어지지 않습니다. 영어로, No free lunch!

* Q: 효용 함수와 비용 함수의 용도가 궁금합니다.
  * A: 수와 비용함수 모두 모델을 훈련시킬 때 보다 좋은 모델로 훈련되도록 방향을 제시하는 기준 역할을 수행합니다. 그리고 두 함수는 서로 동전의 양면의 관계에 있습니다. 자세한 내용은 3장, 4장에서 설명합니다.

* Q: 과소적합 해결 주요 기법중에 모델 파라미터가 더 많은 강력한 모델을 선택한다는 것이 있는데 이 말은 함수적으로 더 복잡한 모델을 선택하라는 의미인가요? 아니면 데이터를 대표하는 표본을 잘 선택해야 한다는 의미인가요?
  * A: 먼저, 파라미터와 하이퍼파라미터를 구분해야 합니다. 먼저 하이퍼파라미터는 모델을 지정할 때 사용하며, 훈련 과정에서 변하지 않습니다. 즉, 하이퍼파라미터가 다르면 다른 모델이 됩니다. 반면에 하나의 모델은 다수의 파라미터로 구성되며, 모델이 훈련한다는 말은 파라미터 값들을 변경한다는 의미입니다. 
<br><br>
1인당 GDP와 삶의 만족도 사이의 관계를 선형회귀 모델로 구현하려면 절편과 기울기 두 개의 파라미터가 훈련되어야 합니다. 그런데 선형회귀 모델은 적절하지 않은 것으로 판단되는데, 이건 두 개의 파라미터를 사용하는 모델은 적절하지 않다는 의미입니다. 더 많은 파라미터를 사용하는 모델이 필요해 보이며, 예를 들어, 직선이 아니라 포물선 등으로 모델링 하려면 3개 이상의 파라미터를 사용하는 모델을 설정하고 훈련시켜야 합니다. 앞으로 계속해서 다루는 주제입니다.
  
* Q: fit() 메서드를 사용하여 데이터를 학습하고 학습한 데이터 기반으로 predict() 메서드를 통해 데이터를 예측하는 것을 알겠지만 fit(), predict() 메서드가 어떤 식으로 동작(학습과 예측) 하는지에 대해서 이해가 가지 않습니다.
  * A: fit() 메서드가 어떻게 작동하는가를 배우는 게 머신러닝 학습의 본질입니다. 앞으로 계속해서 배울 내용입니다. predict()  메서드는 fit() 메서드에 학습된 파라미터를 이용하여 새로운 값을 예측할 때 사용되는 함수일 뿐입니다.

* Q: DOWNLOAD_ROOT = "https://raw.githubusercontent.com/codingalzi/handson-ml/master/"를 구글 코랩에서 실행하였을때 HTTPError: HTTP Error 404: Not Found 란 오류가 발생합니다.
  * A: DOWNLOAD_ROOT 자체로는 다운로드 링크파일의 주소가 아닙니다. 링크가 어떻게 사용되었는를 잘 확인하세요.

## 2장

* Q: 체크섬을 이용하여 데이터셋을 훈련 세트와 테스트 세트로 구분하는 `test_set_check()` 함수의 작동법이 궁금합니다.
  * A: 체크섬에 대한 이해가 필요합니다. 주피터 노트북에 필요한 만큼만 언급해 놓았으며, 관심 있는 경우 참고 링크를 읽어보기 바랍니다. 머신러닝 코드를 이해하는 데에 반드시 필요하지 않은 함수라서 잘 이해되지 않는다면, 데이터셋을 지정된 비율로 훈련 세트와 테스트 세트로 구분한다는 해당 함수의 역할만 기억해두세요. 

* Q: 중간소득과 중간 주택 가격 사이의 상관관계 도표를 보면 50만, 45만, 35만, 28만, 그 아래 정도에서 수평선이 존재해서 이상한 형태를 학습하지 않도록 해당 구역을 제거하는 것이 좋다고 했는데, 수평선이 존재하는 안되는 이유(수평선이 존재하면 이상한 형태를 학습하는 이유?)를 잘 모르겠습니다. 혹시 이 상황이 상관관계가 0이여서 그런 것인가요?
  * A: 수평선이 존재하는 이유를 먼저 확인해야 합니다. 50만 달러 수평선은 아마도 50만 달러 이상의 주택은 50만 달러로 처리한 것으로 보이지만, 다른 값에서 보이는 수평선은 이유가 정확하지 않습니다. 수평선이 존재하는 이유를 데이터만 들여다 보는 것으로는 알지 못할 수 있는데, 다른 문서가 존재하지 않아서 정확한 이유를 알 수 없습니다. 그렇다면 수평선을 어떻게 처리할 것인가를 고민해야 하며 아래 세 가지 방식중에 하나를 사용할 수 있습니다.<br><br>
방법 1, 그대로 사용한다. 책에서 사용한 방식임.<br>
방법 2, 원인을 알아내어 원래대로 돌려 놓는다. 하지만 원 데이터 없기에 불가능함.<br>
방법 3, 수평선을 이루는 데이터를 삭제한다.<br><br>
방법 3를 사용해야 하는 이유는 "특별한 주택가격과 관련된 수평선 성질"을 모델이 훈련 과정에 특별한 정보로 활용할 수 있기 때문입니다. 즉, 특정 주택 가격과 소득의 상관관계가 0이 되는 성질이 활용될 수 있습니다. 그런데 그 정보가 원래의 의도와 다를 수 있고, 따라서 적절치 않은 정보가 모델 훈련과정에 이용되어 적절치 않은 모델을 생성할 수 있습니다. "혹시 이 상황이 상관관계가 0이여서 그런 것인가요?" 라는 질문은 결론적으로 핵심을 정확하게 짚은 질문이었습니다.