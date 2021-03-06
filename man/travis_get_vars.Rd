% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/travis-vars.R
\name{travis_get_vars}
\alias{travis_get_vars}
\alias{travis_get_var_id}
\alias{travis_set_var}
\alias{travis_delete_var}
\title{Travis CI variables}
\usage{
travis_get_vars(repo = github_repo(), token = travis_token(repo),
  repo_id = travis_repo_id(repo, token))

travis_get_var_id(name, repo = github_repo(), token = travis_token(repo),
  repo_id = travis_repo_id(repo, token))

travis_set_var(name, value, public = FALSE, repo = github_repo(),
  token = travis_token(repo), repo_id = travis_repo_id(repo, token),
  quiet = FALSE)

travis_delete_var(name, repo = github_repo(), token = travis_token(repo),
  repo_id = travis_repo_id(repo, token), id = travis_get_var_id(name, repo =
  repo, token = token, repo_id = repo_id), quiet = FALSE)
}
\arguments{
\item{repo}{\code{[string]}\cr
The GitHub repo slug, by default obtained through \code{\link[=github_repo]{github_repo()}}.}

\item{token}{\code{[Token2.0]}\cr
A Travis CI token obtained from \code{\link[=travis_token]{travis_token()}} or \code{\link[=auth_travis]{auth_travis()}}.}

\item{repo_id}{\code{[string]}\cr
The repo ID, obtained from \code{\link[=travis_repo_id]{travis_repo_id()}} by default.}

\item{name}{\code{[string]}\cr
The name of the variable.}

\item{value}{\code{[string]}\cr
The value for the new or updated variable.}

\item{public}{\code{[flag]}\cr
Should the variable be public or private?}

\item{quiet}{\code{[flag]}\cr
Set to \code{FALSE} to suppress success message.}

\item{id}{\code{[string]}\cr
The ID of the variable, by default obtained from \code{travis_get_var_id()}.}
}
\description{
Functions around public and private variables available in Travis CI builds.

\code{travis_get_vars()} calls the "/settings/env_vars" API.

\code{travis_get_var_id()} retrieves the ID for a variable name, or \code{NULL}.
If multiple variables exist by that name, it returns the ID of the last
(with a warning),
because this is what seems to be used in Travis CI builds in such a case.

\code{travis_set_var()} creates or updates a variable.
If multiple variables exist by that name, it updates the last (with a warning),
because this is what seems to be used in Travis CI builds in such a case.

\code{travis_delete_var()} deletes a variable.
}
