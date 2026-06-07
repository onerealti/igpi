#set page(paper: "a4")
#include "main.typ"

#context {
  let headings = query(heading.where(level: 1))
  for h in headings {
    [PAGE_INFO: #h.body -> #h.location().page() \ ]
  }
}
