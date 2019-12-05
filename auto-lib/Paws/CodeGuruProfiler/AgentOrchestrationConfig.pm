package Paws::CodeGuruProfiler::AgentOrchestrationConfig;
  use Moose;
  has ProfilingEnabled => (is => 'ro', isa => 'Bool', request_name => 'profilingEnabled', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::AgentOrchestrationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::AgentOrchestrationConfig object:

  $service_obj->Method(Att1 => { ProfilingEnabled => $value, ..., ProfilingEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::AgentOrchestrationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ProfilingEnabled

=head1 DESCRIPTION

Configuration to orchestrate agents to create and report agent profiles
of the profiling group. Agents are orchestrated if they follow the
agent orchestration protocol.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfilingEnabled => Bool

  If the agents should be enabled to create and report profiles.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
