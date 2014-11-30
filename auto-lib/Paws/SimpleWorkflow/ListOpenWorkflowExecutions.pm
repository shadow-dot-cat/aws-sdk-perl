
package Paws::SimpleWorkflow::ListOpenWorkflowExecutions {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has executionFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionFilter');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');
  has startTimeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExecutionTimeFilter', required => 1);
  has tagFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::TagFilter');
  has typeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpenWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionInfos');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ListOpenWorkflowExecutions - Arguments for method ListOpenWorkflowExecutions on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOpenWorkflowExecutions on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method ListOpenWorkflowExecutions.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListOpenWorkflowExecutions.

As an example:

  $service_obj->ListOpenWorkflowExecutions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> domain => Str

  

The name of the domain that contains the workflow executions to list.










=head2 executionFilter => Paws::SimpleWorkflow::WorkflowExecutionFilter

  

If specified, only workflow executions matching the workflow id
specified in the filter are returned.










=head2 maximumPageSize => Int

  

The maximum number of results returned in each page. The default is
100, but the caller can override this value to a page size I<smaller>
than the default. You cannot specify a page size greater than 100. Note
that the number of executions may be less than the maxiumum page size,
in which case, the returned page will have fewer results than the
maximumPageSize specified.










=head2 nextPageToken => Str

  

If on a previous call to this method a C<NextPageToken> was returned,
the results are being paginated. To get the next page of results,
repeat the call with the returned token and all other arguments
unchanged.










=head2 reverseOrder => Bool

  

When set to C<true>, returns the results in reverse order. By default
the results are returned in descending order of the start time of the
executions.










=head2 B<REQUIRED> startTimeFilter => Paws::SimpleWorkflow::ExecutionTimeFilter

  

Workflow executions are included in the returned results based on
whether their start times are within the range specified by this
filter.










=head2 tagFilter => Paws::SimpleWorkflow::TagFilter

  

If specified, only executions that have the matching tag are listed.










=head2 typeFilter => Paws::SimpleWorkflow::WorkflowTypeFilter

  

If specified, only executions of the type specified in the filter are
returned.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for ListOpenWorkflowExecutions in Paws::SimpleWorkflow

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

