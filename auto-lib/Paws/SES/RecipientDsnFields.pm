package Paws::SES::RecipientDsnFields;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has DiagnosticCode => (is => 'ro', isa => 'Str');
  has ExtensionFields => (is => 'ro', isa => 'ArrayRef[Paws::SES::ExtensionField]');
  has FinalRecipient => (is => 'ro', isa => 'Str');
  has LastAttemptDate => (is => 'ro', isa => 'Str');
  has RemoteMta => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;