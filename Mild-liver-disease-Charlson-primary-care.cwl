cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  chronic-mild-liver-disease-charlson-primary-care---primary:
    run: chronic-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  mild-liver-disease-charlson-primary-care-hepatitis---primary:
    run: mild-liver-disease-charlson-primary-care-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-atrophy---primary:
    run: mild-liver-disease-charlson-primary-care-atrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-hepatitis---primary/output
  mild-liver-disease-charlson-primary-care-biliary---primary:
    run: mild-liver-disease-charlson-primary-care-biliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-atrophy---primary/output
  macronodular-mild-liver-disease-charlson-primary-care---primary:
    run: macronodular-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-biliary---primary/output
  aggressive-mild-liver-disease-charlson-primary-care---primary:
    run: aggressive-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: macronodular-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-cirrhosis---primary:
    run: mild-liver-disease-charlson-primary-care-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: aggressive-mild-liver-disease-charlson-primary-care---primary/output
  nonalcoholic-mild-liver-disease-charlson-primary-care---primary:
    run: nonalcoholic-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-cirrhosis---primary/output
  viral-mild-liver-disease-charlson-primary-care---primary:
    run: viral-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: nonalcoholic-mild-liver-disease-charlson-primary-care---primary/output
  active-mild-liver-disease-charlson-primary-care---primary:
    run: active-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: viral-mild-liver-disease-charlson-primary-care---primary/output
  portal-mild-liver-disease-charlson-primary-care---primary:
    run: portal-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: active-mild-liver-disease-charlson-primary-care---primary/output
  noninfective-mild-liver-disease-charlson-primary-care---primary:
    run: noninfective-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: portal-mild-liver-disease-charlson-primary-care---primary/output
  other-mild-liver-disease-charlson-primary-care---primary:
    run: other-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: noninfective-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-classified---primary:
    run: mild-liver-disease-charlson-primary-care-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: other-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-sclerosing---primary:
    run: mild-liver-disease-charlson-primary-care-sclerosing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-classified---primary/output
  mild-liver-disease-charlson-primary-care-unspecified---primary:
    run: mild-liver-disease-charlson-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-sclerosing---primary/output
  recurrent-mild-liver-disease-charlson-primary-care---primary:
    run: recurrent-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-unspecified---primary/output
  toxic-mild-liver-disease-charlson-primary-care---primary:
    run: toxic-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: recurrent-mild-liver-disease-charlson-primary-care---primary/output
  hepatic-mild-liver-disease-charlson-primary-care---primary:
    run: hepatic-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: toxic-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-autoimmune---primary:
    run: mild-liver-disease-charlson-primary-care-autoimmune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hepatic-mild-liver-disease-charlson-primary-care---primary/output
  deltaagent-mild-liver-disease-charlson-primary-care---primary:
    run: deltaagent-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-autoimmune---primary/output
  lobular-mild-liver-disease-charlson-primary-care---primary:
    run: lobular-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: deltaagent-mild-liver-disease-charlson-primary-care---primary/output
  secondary-mild-liver-disease-charlson-primary-care---primary:
    run: secondary-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lobular-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-cholangitis---primary:
    run: mild-liver-disease-charlson-primary-care-cholangitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: secondary-mild-liver-disease-charlson-primary-care---primary/output
  mild-liver-disease-charlson-primary-care-subacute---primary:
    run: mild-liver-disease-charlson-primary-care-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-cholangitis---primary/output
  mild-liver-disease-charlson-primary-care-genotype---primary:
    run: mild-liver-disease-charlson-primary-care-genotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-subacute---primary/output
  mild-liver-disease-charlson-primary-care-fibrosis---primary:
    run: mild-liver-disease-charlson-primary-care-fibrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-genotype---primary/output
  persistent-mild-liver-disease-charlson-primary-care---primary:
    run: persistent-mild-liver-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-fibrosis---primary/output
  mild-liver-disease-charlson-primary-care-laennec---primary:
    run: mild-liver-disease-charlson-primary-care-laennec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: persistent-mild-liver-disease-charlson-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: mild-liver-disease-charlson-primary-care-laennec---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
