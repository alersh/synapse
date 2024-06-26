#' R6 class representing Node_Style
#'
#' @description
#' Creates a Node_Style object
#' @details
#' Specifies the appearance of the nodes
#' @export
Node_Style <- R6::R6Class("Node_Style",
                          inherit = Serializable,
                           public = list(
                             #' @field label
                             label = "",

                             #' initialize
                             #' @description Create a new Node_Style object with a node label
                             #' @param label the label of the node to be displayed
                             #' @param type the type of the node. Default is "regular". It can also be "process" and "database".
                             #' @param default Logical. If TRUE, then no data fields are initialized.
                             #' @return A new Node_Style object
                             initialize = function(label = "", type = c("regular", "process", "database"), default = FALSE){
                               type <- match.arg(type)
                               if (!default){
                                 private$.type <- type
                                 if (type == "regular")
                                   private$.shape <- private$.lock_shape[['unlock']]
                                 else{
                                   private$.shape <- "icon"
                                   private$.icon <- get_icon(type)
                                 }
                                 private$.current_status = "idle"
                                 private$.fillcolor <- private$.status_color[['idle']]
                                 private$.icon_color <- private$.status_color[['idle']]
                                 self$label <- label
                               }
                             },
                             #' invalidate
                             #' @description Set the invalid shape of the node
                             invalidate = function(){
                               if (private$.type == "regular")
                                private$.shape <- private$.lock_shape[['invalid']]
                               else{
                                 private$.shape <- "icon"
                                 private$.icon <- get_icon("invalid")
                               }

                               invisible(self)
                             },
                             #' set_status
                             #' @description Set the status color of the node.
                             #' @param status Character. The status of the node. Can be 'idle', 'success', 'running',
                             #' 'fail', and 'warning'
                             set_status = function(status = c("idle", "success", "running", "fail", "warning")){
                               status <- match.arg(status)
                               private$.current_status <- status
                               private$.fillcolor <- private$.status_color[[status]]
                               private$.icon_color <- private$.status_color[[status]]
                               invisible(self)
                             },
                             #' render
                             #' @description Render the nodes of a network
                             #' @param node_id A vector of node ids.
                             #' @param network_id Character. The id of the network.
                             #' @return A data frame
                             render = function(node_id, network_id){
                               node_frame <- data.frame(
                                 id = node_id,
                                 label = self$label,
                                 group = network_id,
                                 color.background = self$status_color,
                                 color.border = "black",
                                 shape = self$shape,
                                 icon = private$.icon,
                                 icon.color = self$status_color,
                                 stringsAsFactors = FALSE
                               )
                               return (node_frame)
                             }
                           ),
                           active = list(
                             #' @field shape Get the shape of this node.
                             shape = function(){
                               return (private$.shape)
                             },
                             #' @field type Get or set the type of the node. Default 'regular'.
                             type = function(type){
                               if (missing(type))
                                 return (private$.type)
                               if (type != "regular")
                                stop("Type must be a regular")
                               private$.type <- type
                               invisible(self)
                             },
                             #' @field lock Set the shape of the node based on the lock status.
                             lock = function(lock){
                               if (missing(lock))
                                 stop("lock does not return a value.")
                               if (!is.logical(lock))
                                 stop("Argument must be a logical")
                               if (lock)
                                 if (private$.type == "regular")
                                   private$.shape <- private$.lock_shape[["lock"]]
                                 else {
                                   private$.shape <- "icon"
                                   private$.icon <- get_icon("lock")
                                 }
                               else
                                 if (private$.type == "regular")
                                  private$.shape <- private$.lock_shape[["unlock"]]
                                 else{
                                   private$.shape <- "icon"
                                   private$.icon <- get_icon(private$.type)
                                 }
                               invisible(self)
                             },
                             #' @field group Set the group of the node.
                             group = function(value){
                               if (missing(value)){
                                 return (private$.group)
                               }
                               if (!is.character(value))
                                 stop("value is not a character.")

                               private$.group <- value
                               invisible(self)
                             },
                             #' @field status_color Get the node color related to the node's status.
                             status_color = function(){
                               return (private$.status_color[[private$.current_status]])
                             }

                           ),
                           private = list(
                             # @field .current_status Stores the current status of the node
                             .current_status = NA,
                             # @field .status_color A constant list of status colors.
                             .status_color = list('idle' = 'black',
                                                  'running' = 'gold',
                                                  'success' = '#20CE30',
                                                  'fail' = 'tomato',
                                                  'warning' = 'lightblue'),
                             # @field .lock_shape A constant list of lock shape
                             .lock_shape = list('lock' = 'square',
                                                'unlock' = 'dot',
                                                'invalid' = 'triangle'),
                             # @field .border_width A constant list of border width
                             .border_width = list('normal' = 1,
                                                  'locked' = 2),
                             # @field .icon stores the icon info
                             .icon = NULL,
                             # @field .icon_color stores the icon color
                             .icon_color = NULL,

                             # @field .type
                             .type = 'regular',
                             # @field .shape
                             .shape = NA,
                             # @field .fillcolor
                             .fillcolor = NA,
                             # @field .group
                             .group = NA,

                             extract = function(){
                               values <- list(label = self$label,
                                              status_color = private$.status_color,
                                              lock_shape = private$.lock_shape,
                                              border_width = private$.border_width,
                                              type = private$.type,
                                              shape = private$.shape,
                                              icon = private$.icon,
                                              icon_color = private$.icon_color,
                                              fillcolor = private$.fillcolor,
                                              group = private$.group

                               )

                             },

                             restore = function(values){
                               self$label <- values$label
                               private$.status_color <- values$status_color
                               private$.lock_shape <- values$lock_shape
                               private$.border_width <- values$border_width
                               private$.type <- values$type
                               private$.shape <- values$shape
                               private$.fillcolor <- values$fillcolor
                               private$.group <- values$group
                               private$.icon <- values$icon
                               private$.icon_color <- values$icon_color
                             }
                           )
)

#' static methods
#'
#' is_node_style
#' @description Check if this object is a 'Node_style' object
#' @return A logical
is_Node_Style <- function(obj){
  return (inherits(obj, "Node_Style"))
}
