cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-dementia-alzheimer---secondary:
    run: ccu002_01-dementia-alzheimer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ccu002_01-dementia-unspecified---secondary:
    run: ccu002_01-dementia-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-alzheimer---secondary/output
  ccu002_01-dementia-superimposed---secondary:
    run: ccu002_01-dementia-superimposed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-unspecified---secondary/output
  atypical-ccu002_01-dementia---secondary:
    run: atypical-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-superimposed---secondary/output
  ccu002_01-dementia-verbal---secondary:
    run: ccu002_01-dementia-verbal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: atypical-ccu002_01-dementia---secondary/output
  progressive-ccu002_01-dementia---secondary:
    run: progressive-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-verbal---secondary/output
  other-ccu002_01-dementia---secondary:
    run: other-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: progressive-ccu002_01-dementia---secondary/output
  cortical-ccu002_01-dementia---secondary:
    run: cortical-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-declined---secondary:
    run: ccu002_01-dementia-declined---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cortical-ccu002_01-dementia---secondary/output
  paranoid-ccu002_01-dementia---secondary:
    run: paranoid-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-declined---secondary/output
  ccu002_01-dementia-depression---secondary:
    run: ccu002_01-dementia-depression---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: paranoid-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-presenile---secondary:
    run: ccu002_01-dementia-presenile---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-depression---secondary/output
  ccu002_01-dementia-dementium---secondary:
    run: ccu002_01-dementia-dementium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-presenile---secondary/output
  ccu002_01-dementia-indicator---secondary:
    run: ccu002_01-dementia-indicator---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-dementium---secondary/output
  nonfamilial-ccu002_01-dementia---secondary:
    run: nonfamilial-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-indicator---secondary/output
  frontotemporal-ccu002_01-dementia---secondary:
    run: frontotemporal-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: nonfamilial-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-uncomplicated---secondary:
    run: ccu002_01-dementia-uncomplicated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: frontotemporal-ccu002_01-dementia---secondary/output
  degenerative-ccu002_01-dementia---secondary:
    run: degenerative-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-uncomplicated---secondary/output
  ccu002_01-dementia-advance---secondary:
    run: ccu002_01-dementia-advance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: degenerative-ccu002_01-dementia---secondary/output
  ccu002_01-dementia---secondary:
    run: ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-advance---secondary/output
  ccu002_01-dementia-third---secondary:
    run: ccu002_01-dementia-third---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia---secondary/output
  ccu002_01-dementia-telephone---secondary:
    run: ccu002_01-dementia-telephone---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-third---secondary/output
  ccu002_01-dementia-parkinsons---secondary:
    run: ccu002_01-dementia-parkinsons---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-telephone---secondary/output
  ccu002_01-dementia-picks---secondary:
    run: ccu002_01-dementia-picks---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-parkinsons---secondary/output
  ccu002_01-dementia-first---secondary:
    run: ccu002_01-dementia-first---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-picks---secondary/output
  ccu002_01-dementia-review---secondary:
    run: ccu002_01-dementia-review---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-first---secondary/output
  ccu002_01-dementia-condition---secondary:
    run: ccu002_01-dementia-condition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-review---secondary/output
  ccu002_01-dementia-associated---secondary:
    run: ccu002_01-dementia-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-condition---secondary/output
  mixed-ccu002_01-dementia---secondary:
    run: mixed-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-associated---secondary/output
  ccu002_01-dementia-delirium---secondary:
    run: ccu002_01-dementia-delirium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: mixed-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-gerstmannstraussler-scheinker---secondary:
    run: ccu002_01-dementia-gerstmannstraussler-scheinker---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-delirium---secondary/output
  ccu002_01-dementia-creutzfeldtjakob---secondary:
    run: ccu002_01-dementia-creutzfeldtjakob---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-gerstmannstraussler-scheinker---secondary/output
  frontal-ccu002_01-dementia---secondary:
    run: frontal-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-creutzfeldtjakob---secondary/output
  ccu002_01-dementia-invitation---secondary:
    run: ccu002_01-dementia-invitation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: frontal-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-second---secondary:
    run: ccu002_01-dementia-second---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-invitation---secondary/output
  ccu002_01-dementia-agreed---secondary:
    run: ccu002_01-dementia-agreed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-second---secondary/output
  ccu002_01-dementia-disturbance---secondary:
    run: ccu002_01-dementia-disturbance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-agreed---secondary/output
  ccu002_01-dementia-features---secondary:
    run: ccu002_01-dementia-features---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-disturbance---secondary/output
  ccu002_01-dementia-prion---secondary:
    run: ccu002_01-dementia-prion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-features---secondary/output
  vascular-ccu002_01-dementia---secondary:
    run: vascular-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-prion---secondary/output
  ccu002_01-dementia-multiinfarct---secondary:
    run: ccu002_01-dementia-multiinfarct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: vascular-ccu002_01-dementia---secondary/output
  acute-ccu002_01-dementia---secondary:
    run: acute-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-multiinfarct---secondary/output
  ccu002_01-dementia-invite---secondary:
    run: ccu002_01-dementia-invite---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: acute-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-onset---secondary:
    run: ccu002_01-dementia-onset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-invite---secondary/output
  arteriosclerotic-ccu002_01-dementia---secondary:
    run: arteriosclerotic-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-onset---secondary/output
  ccu002_01-dementia-excepted---secondary:
    run: ccu002_01-dementia-excepted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: arteriosclerotic-ccu002_01-dementia---secondary/output
  ccu002_01-dementia-psychoses---secondary:
    run: ccu002_01-dementia-psychoses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-excepted---secondary/output
  ccu002_01-dementia-monitoring---secondary:
    run: ccu002_01-dementia-monitoring---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-psychoses---secondary/output
  organic-ccu002_01-dementia---secondary:
    run: organic-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ccu002_01-dementia-monitoring---secondary/output
  early-ccu002_01-dementia---secondary:
    run: early-ccu002_01-dementia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: organic-ccu002_01-dementia---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: early-ccu002_01-dementia---secondary/output
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
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
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
