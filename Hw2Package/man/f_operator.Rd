\name{f_operator}
\alias{f_operator}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Transforming sqrt.2() and log.2()
}
\description{
Takes other functions such as sqrt.2() and log.2() and fixes them for use with lapply(). f_operator() transforms the functions such that:

1. If input is greater than 0, then return normal output.

2. If input is invalid, return an error condition object, with “invalid_input” subclass and invalid value attached.
}
\usage{
f_operator(x)
}
\arguments{
  \item{x}{
function sqrt.2() or log.2()
}
}
