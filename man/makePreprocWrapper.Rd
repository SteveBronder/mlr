% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PreprocWrapper.R
\name{makePreprocWrapper}
\alias{makePreprocWrapper}
\title{Fuse learner with preprocessing.}
\usage{
makePreprocWrapper(learner, train, predict, par.set = makeParamSet(),
  par.vals = list())
}
\arguments{
\item{learner}{[\code{\link{Learner}} | \code{character(1)}]\cr
The learner.
If you pass a string the learner will be created via \code{\link{makeLearner}}.}

\item{train}{[\code{function(data, target, args)}]\cr
Function to preprocess the data before training.
\code{target} is a string and denotes the target variable in \code{data}.
\code{args} is a list of further arguments and parameters to influence the
preprocessing.
Must return a \code{list(data, control)}, where \code{data} is the preprocessed
data and \code{control} stores all information necessary to do the preprocessing
before predictions.}

\item{predict}{[\code{function(data, target, args, control)}]\cr
Function to preprocess the data before prediction.
\code{target} is a string and denotes the target variable in \code{data}.
\code{args} are the args that were passed to \code{train}.
\code{control} is the object you returned in \code{train}.
Must return the processed data.}

\item{par.set}{[\code{\link[ParamHelpers]{ParamSet}}]\cr
Parameter set of \code{\link[ParamHelpers]{LearnerParam}} objects to describe the
parameters in \code{args}.
Default is empty set.}

\item{par.vals}{[\code{list}]\cr
Named list of default values for params in \code{args} respectively \code{par.set}.
Default is empty list.}
}
\value{
[\code{\link{Learner}}].
}
\description{
Fuses a base learner with a preprocessing method. Creates a learner object, which can be
used like any other learner object, but which internally preprocesses the data as requested.
If the train or predict function is called on data / a task, the preprocessing is always performed automatically.
}
\seealso{
Other wrapper: \code{\link{makeBaggingWrapper}},
  \code{\link{makeConstantClassWrapper}},
  \code{\link{makeCostSensClassifWrapper}},
  \code{\link{makeCostSensRegrWrapper}},
  \code{\link{makeDownsampleWrapper}},
  \code{\link{makeFeatSelWrapper}},
  \code{\link{makeFilterWrapper}},
  \code{\link{makeImputeWrapper}},
  \code{\link{makeMulticlassWrapper}},
  \code{\link{makeMultilabelBinaryRelevanceWrapper}},
  \code{\link{makeMultilabelClassifierChainsWrapper}},
  \code{\link{makeMultilabelDBRWrapper}},
  \code{\link{makeMultilabelNestedStackingWrapper}},
  \code{\link{makeMultilabelStackingWrapper}},
  \code{\link{makeOverBaggingWrapper}},
  \code{\link{makePreprocWrapperCaret}},
  \code{\link{makePreprocWrapperLambert}},
  \code{\link{makeRemoveConstantFeaturesWrapper}},
  \code{\link{makeSMOTEWrapper}},
  \code{\link{makeTuneWrapper}},
  \code{\link{makeUndersampleWrapper}},
  \code{\link{makeWeightedClassesWrapper}}
}

