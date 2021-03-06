
package Paws::StepFunctions::StartExecution;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'input' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::StartExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::StartExecution - Arguments for method StartExecution on Paws::StepFunctions

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExecution on the 
AWS Step Functions service. Use the attributes of this class
as arguments to method StartExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExecution.

As an example:

  $service_obj->StartExecution(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Input => Str

The JSON input data for the execution.



=head2 Name => Str

The name of the execution. This name must be unique for your AWS
account and region.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine to execute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExecution in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

