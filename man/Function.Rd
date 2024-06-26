% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function.R
\name{Function}
\alias{Function}
\title{R6 implementation of Function}
\description{
A Function class
}
\details{
The Function object stores the function, the arguments, the parameter, and the methods
used to process the function.
}
\section{Super class}{
\code{\link[ModelPath:Serializable]{ModelPath::Serializable}} -> \code{Function}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{fn}}{Getter and setter for fn}

\item{\code{ns}}{Getter and setter for ns.}

\item{\code{args}}{Getter and setter for the input arguments}

\item{\code{options}}{Getter and setter for the list of options and their parameters}

\item{\code{data_types}}{Getter and setter data types of the arguments}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Function-new}{\code{Function$new()}}
\item \href{#method-Function-make_function_string}{\code{Function$make_function_string()}}
\item \href{#method-Function-options_to_string}{\code{Function$options_to_string()}}
\item \href{#method-Function-set_option}{\code{Function$set_option()}}
\item \href{#method-Function-add_arg}{\code{Function$add_arg()}}
\item \href{#method-Function-remove_arg}{\code{Function$remove_arg()}}
\item \href{#method-Function-set_data_type}{\code{Function$set_data_type()}}
\item \href{#method-Function-clone}{\code{Function$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="ModelPath" data-topic="Serializable" data-id="serialize"><a href='../../ModelPath/html/Serializable.html#method-Serializable-serialize'><code>ModelPath::Serializable$serialize()</code></a></span></li>
<li><span class="pkg-link" data-pkg="ModelPath" data-topic="Serializable" data-id="unserialize"><a href='../../ModelPath/html/Serializable.html#method-Serializable-unserialize'><code>ModelPath::Serializable$unserialize()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-new"></a>}}
\if{latex}{\out{\hypertarget{method-Function-new}{}}}
\subsection{Method \code{new()}}{
Specify the node's function, arguments, options, and argument types. If options is NULL, node_function
will try to extract the options from this function given the input arguments.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$new(
  fn = NULL,
  ns = NULL,
  input_args = NULL,
  data_types = NULL,
  source = NULL,
  default = FALSE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{fn}}{Function of this node}

\item{\code{ns}}{Namespace of the function}

\item{\code{input_args}}{A vector. The argument(s) that receives the input(s).}

\item{\code{data_types}}{A list. Data types of arguments  (i.e. vector, array, matrix, data.frame, list, character, logical, formula, function).
The keys are the names of the arguments of the function and their values are the data types.}

\item{\code{source}}{The source files that are to be included}

\item{\code{default}}{Logical. If TRUE, then no data fields are initialized.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A Function object
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-make_function_string"></a>}}
\if{latex}{\out{\hypertarget{method-Function-make_function_string}{}}}
\subsection{Method \code{make_function_string()}}{
Turn the function into a character string so that it can be evaluated by eval
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$make_function_string(s)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{s}}{Character. The string of the arguments}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The string of the function
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-options_to_string"></a>}}
\if{latex}{\out{\hypertarget{method-Function-options_to_string}{}}}
\subsection{Method \code{options_to_string()}}{
Convert a list of options into a string. To be used in do.call.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$options_to_string()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A string
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-set_option"></a>}}
\if{latex}{\out{\hypertarget{method-Function-set_option}{}}}
\subsection{Method \code{set_option()}}{
Set the value of an option
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$set_option(key, value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the function argument already in the options}

\item{\code{value}}{An object that is acceptable to the argument as specified in key.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-add_arg"></a>}}
\if{latex}{\out{\hypertarget{method-Function-add_arg}{}}}
\subsection{Method \code{add_arg()}}{
Add a new input argument so that it can be used as a socket for an output from an
input node. This new input argument will automatically be removed from the function options.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$add_arg(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the function argument to be added.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-remove_arg"></a>}}
\if{latex}{\out{\hypertarget{method-Function-remove_arg}{}}}
\subsection{Method \code{remove_arg()}}{
Remove an input argument so that it can no longer be used as socket for an output
from an input node. The removed argument will be automatically added back to the  function options
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$remove_arg(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the input argument to be removed.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-set_data_type"></a>}}
\if{latex}{\out{\hypertarget{method-Function-set_data_type}{}}}
\subsection{Method \code{set_data_type()}}{
Set the data/object type of an argument.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$set_data_type(key, data_type)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the argument.}

\item{\code{data_type}}{Character. The name of the data type.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Function-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Function-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Function$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
