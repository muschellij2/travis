% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/travis-meta.R
\name{travis_accounts}
\alias{travis_accounts}
\alias{travis_repositories}
\alias{travis_user}
\title{Retrieve meta information from Travis CI}
\usage{
travis_accounts(token = travis_token())

travis_repositories(slug = NULL, search = NULL, token = travis_token())

travis_user(token = travis_token())
}
\arguments{
\item{token}{\code{[Token2.0]}\cr
A Travis CI token obtained from \code{\link[=travis_token]{travis_token()}} or \code{\link[=auth_travis]{auth_travis()}}.}

\item{slug, search}{\code{[string]}\cr
Arguments to the API call}
}
\description{
Return account, repositories, and user information.

\code{travis_accounts()} queries the "/accounts" API.

\code{travis_repositories()} queries the "/repos" API.

\code{travis_user()} queries the "/users" API.
}
\seealso{
\href{https://docs.travis-ci.com/api}{Travis CI API documentation}

Other Travis CI functions: \code{\link{travis_repo_info}},
  \code{\link{travis_set_pat}}
}
