import { ApiPropertyOptional } from '@nestjs/swagger';

export class FindProductDto {
  @ApiPropertyOptional()
  name?: string;

  @ApiPropertyOptional()
  description?: string;
}
