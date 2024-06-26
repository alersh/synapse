% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dictionary.R
\name{Dictionary}
\alias{Dictionary}
\title{Dictionary}
\description{
A dictionary stores objects with keys.
}
\details{
A dictionary is similar to a list, except that all keys must be unique.
}
\section{Super class}{
\code{\link[ModelPath:Serializable]{ModelPath::Serializable}} -> \code{Dictionary}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{items}}{Get or set the entire dictionary. To enable value check, the check_value
function must have been set via either the initialization or active binding before setting
this list into the dictionary.}

\item{\code{check_value_fn}}{Set the check value function}

\item{\code{check_key_fn}}{Set the check key function}

\item{\code{length}}{Get the length of the dictionary}

\item{\code{keys}}{Get all the keys in the dictionary}

\item{\code{values}}{Get all the values in the dictionary}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Dictionary-new}{\code{Dictionary$new()}}
\item \href{#method-Dictionary-get}{\code{Dictionary$get()}}
\item \href{#method-Dictionary-remove}{\code{Dictionary$remove()}}
\item \href{#method-Dictionary-add_value_with_key}{\code{Dictionary$add_value_with_key()}}
\item \href{#method-Dictionary-set_value_with_key}{\code{Dictionary$set_value_with_key()}}
\item \href{#method-Dictionary-clear}{\code{Dictionary$clear()}}
\item \href{#method-Dictionary-get_keys_with_value}{\code{Dictionary$get_keys_with_value()}}
\item \href{#method-Dictionary-is_empty}{\code{Dictionary$is_empty()}}
\item \href{#method-Dictionary-contains_key}{\code{Dictionary$contains_key()}}
\item \href{#method-Dictionary-clone}{\code{Dictionary$clone()}}
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
\if{html}{\out{<a id="method-Dictionary-new"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-new}{}}}
\subsection{Method \code{new()}}{
Create a new dictionary. All keys must be unique.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$new(
  ...,
  check_key_fn = NULL,
  check_value_fn = NULL,
  read_only = FALSE,
  default = FALSE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{key - value inputs}

\item{\code{check_key_fn}}{An optional function that provides a check of the key value}

\item{\code{check_value_fn}}{An optional function that provides a check of the input values}

\item{\code{read_only}}{Logical whether the dictionary is read only.}

\item{\code{default}}{Logical. If TRUE, then no data fields are initialized.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-get"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-get}{}}}
\subsection{Method \code{get()}}{
Get the value by the key. The key can be a character or an index number
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$get(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{A character to access the value by the name, or a number to access the value by the index value}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The value
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-remove"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-remove}{}}}
\subsection{Method \code{remove()}}{
Remove the key-value in the dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$remove(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the key to be removed.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-add_value_with_key"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-add_value_with_key}{}}}
\subsection{Method \code{add_value_with_key()}}{
Add a key-value in the dictionary
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$add_value_with_key(key, value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the key.}

\item{\code{value}}{An object that is associated with the key}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-set_value_with_key"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-set_value_with_key}{}}}
\subsection{Method \code{set_value_with_key()}}{
Set a value based on the key already in the dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$set_value_with_key(key, value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the key that is already in the dictionary.}

\item{\code{value}}{An object to be stored in the dictionary.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-clear"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-clear}{}}}
\subsection{Method \code{clear()}}{
Remove all key-value items from the dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$clear()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-get_keys_with_value"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-get_keys_with_value}{}}}
\subsection{Method \code{get_keys_with_value()}}{
Get all the keys containing a specific value
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$get_keys_with_value(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{An object}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A vector
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-is_empty"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-is_empty}{}}}
\subsection{Method \code{is_empty()}}{
Check if the dictionary is empty or not
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$is_empty()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Logical
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-contains_key"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-contains_key}{}}}
\subsection{Method \code{contains_key()}}{
Check if the dictionary contains the key.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$contains_key(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{Character. The name of the key.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Logical
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Dictionary-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Dictionary-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
