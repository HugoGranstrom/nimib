type
  NbBlockKind* = enum
    nbkText = "nbText", nbkCode = "nbCode"
  NbBlock* = ref object
    kind*: NbBlockKind
    body*: string
    output*: string
    error*: string
  Renderer* = proc (doc: NbDoc): string {.closure.}
  NbDoc* = object
    sourceFilename*, source*, filename*: string
    searchDirs*: seq[string]
    data*: seq[NbBlock]
    renderer*: Renderer