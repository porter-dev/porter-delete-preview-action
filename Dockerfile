FROM public.ecr.aws/o1j4x7p4/porter-cli:dev

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]