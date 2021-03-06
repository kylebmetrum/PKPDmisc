#' create basic folder structure for a phoenix report
#' @name phx_report
#' @param project name of top level project folder
#' @param secondary_folders list of subfolders
#' @details
#' A placeholder.txt file is created in each subfolder to allow for
#' initial folder structure to be maintained if using a version control
#' system such as git (as empty directories are not kept)
#' 
#' Currently only works if there is no project folder with the same name, and
#' does not do any checking (will just error out)
#' @examples
#' \dontrun{
#' phx_report("Assignment-1")
#' phx_report("Assignment-1", list("Rscripts", "simulation-results", "data"))
#' }
#' @export 
phx_report <- function(project, 
                       secondary_folders = list("Rscripts", 
                                                "phoenix-output", 
                                                "for-phoenix", 
                                                "lab-notebook", 
                                                "data")) 
{
  dir.create(project)
  lapply(secondary_folders, function(x) {dir.create(paste0(project ,'\\', x))
                                         file.create(paste0(project ,'/', x,"/", "placeholder.txt"))})
}