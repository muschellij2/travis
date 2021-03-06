#' Get repository information from Travis CI
#'
#' @description
#' Return repository information, in particular the repository ID.
#'
#' `travis_repo_info()` queries the "/repos/:repo" API.
#'
#' @param repo `[string]`\cr
#'   The GitHub repo slug, by default obtained through [github_repo()].
#' @param token `[Token2.0]`\cr
#'   A Travis CI token obtained from [travis_token()] or [auth_travis()].
#'
#' @seealso [Travis CI API documentation](https://docs.travis-ci.com/api)
#'
#' @family Travis CI functions
#'
#' @export
travis_repo_info <- function(repo = github_repo(),
                             token = travis_token(repo)) {
  req <- TRAVIS_GET(sprintf("/repos/%s", repo), token = token)
  httr::stop_for_status(req, sprintf("get repo info on %s from Travis", repo))
  httr::content(req)[[1L]]
}

#' @description
#' `travis_repo_id()` returns the repo ID obtained from `travis_repo_info()`.
#'
#' @export
#' @rdname travis_repo_info
travis_repo_id <- function(repo = github_repo(), token = travis_token(repo)) {
  travis_repo_info(repo = repo, token = token)$id
}
